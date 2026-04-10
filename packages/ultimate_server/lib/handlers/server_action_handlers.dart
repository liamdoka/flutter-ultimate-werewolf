part of 'handlers.dart';

extension ServerActionHandlers on ServerHandler {
  void _handleServerAction(
    ServerAction action, {
    required WebSocketChannel socket,
  }) async {
    logger.log(Level.INFO, "Handling $action");

    switch (action) {
      case ServerCreateLobby(:final nickname):
        final validatedNickname = _validateNickname(nickname);
        if (validatedNickname == null) {
          logger.warning("Invalid nickname: $nickname");
          return;
        }
        final lobby = await lobbyService.createLobby();
        _addPlayerToLobby(
          socket: socket,
          lobby: lobby,
          nickname: validatedNickname,
        );

      case ServerJoinLobby(:final nickname, :final roomCode):
        final validatedNickname = _validateNickname(nickname);
        if (validatedNickname == null) {
          logger.warning("Invalid nickname: $nickname");
          return;
        }
        final validatedRoomCode = _validateRoomCode(roomCode);
        if (validatedRoomCode == null) {
          logger.warning("Invalid room code: $roomCode");
          return;
        }
        final lobby = await lobbyService.getLobbyById(validatedRoomCode);
        if (lobby == null) {
          logger.severe("Lobby with ID '$validatedRoomCode' not found");
          return;
        }
        if (lobby.state != LobbyState.waiting &&
            lobby.state != LobbyState.starting) {
          logger.warning("Cannot join lobby in state: ${lobby.state}");
          return;
        }
        _addPlayerToLobby(
          socket: socket,
          lobby: lobby,
          nickname: validatedNickname,
        );

      case ServerUpdateLobby(:final lobby):
        await lobbyService.updateLobby(lobby);

      case ServerSyncLobby():
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }

        final lobby = await lobbyService.getLobbyById(player.roomCode);
        if (lobby == null) {
          logger.severe("Lobby with ID '${player.roomCode}' not found");
          return;
        }

        socket.send(ActionModel.server(ServerAction.updateLobby(lobby)));

      case ServerUnknown():
        logger.warning("Unknown server action");

      case ServerUpdateNickname(:final nickname):
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }

        final lobby = await lobbyService.getLobbyById(player.roomCode);
        if (lobby == null) {
          logger.severe("Lobby with ID '${player.roomCode}' not found");
          return;
        }

        if (lobby.players.any((p) => p.nickname == nickname)) {
          logger.severe(
            "Player with nickname '$nickname' already in lobby '${lobby.id}'",
          );
          return;
        }

        final newPlayer = player.copyWith(nickname: nickname);
        await playerService.addPlayer(newPlayer);
        await lobbyService.updatePlayer(newPlayer.roomCode, newPlayer);

        socket.send(ActionModel.client(ClientAction.changeNickname(nickname)));

      case ServerLeaveLobby():
        await handleDisconnect(socket);

      case ServerSetReady(:final isReady):
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }
        final newPlayer = player.copyWith(isReady: isReady);

        await lobbyService.updatePlayer(player.roomCode, newPlayer);
        await playerService.addPlayer(newPlayer);

        final lobby = await lobbyService.getLobbyById(player.roomCode);
        if (lobby == null) {
          logger.severe("Lobby with ID '${player.roomCode}' not found");
          return;
        }

        final allPlayersAreReady = !lobby.players.any(
          (player) => !player.isReady,
        );

        _lobbyStartTimers[lobby.id]?.cancel();
        _lobbyStartTimers.remove(lobby.id);

        if (lobby.players.isNotEmpty && allPlayersAreReady) {
          await lobbyService.updateLobby(
            lobby.copyWith(state: LobbyState.starting),
          );
          _lobbyStartTimers[lobby.id] = Timer(
            UltimateDurations.lobbyCountdown,
            () {
              logger.info("Starting game for lobby ${lobby.id}");
              _startGame(lobby.id);
              _lobbyStartTimers.remove(lobby.id);
            },
          );
        } else if (lobby.state != LobbyState.waiting) {
          await lobbyService.updateLobby(
            lobby.copyWith(state: LobbyState.waiting),
          );
        }
    }
  }

  String? _validateNickname(String nickname) {
    if (nickname.isEmpty || nickname.length > 20) return null;
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(nickname)) return null;
    return nickname;
  }

  String? _validateRoomCode(String roomCode) {
    if (roomCode.length != 6) return null;
    if (!RegExp(r'^[0-9]+$').hasMatch(roomCode)) return null;
    return roomCode;
  }

  Future<void> _startGame(String lobbyId) async {
    final lobby = await lobbyService.getLobbyById(lobbyId);
    if (lobby == null) {
      logger.severe("Lobby with ID '$lobbyId' not found");
      return;
    }

    if (lobby.state case LobbyState.running) return;
    await lobbyService.updateLobby(lobby.copyWith(state: LobbyState.running));

    final game = GameHelpers.createGameFromLobby(lobby);
    await gameService.updateGame(game);
  }

  Future<void> _addPlayerToLobby({
    required WebSocketChannel socket,
    required LobbyModel lobby,
    required String nickname,
  }) async {
    if (lobby.players.any((p) => p.nickname == nickname)) {
      logger.severe(
        "Player with nickname '$nickname' already in lobby '${lobby.id}'",
      );
      return;
    }

    final player = PlayerModel(
      id: socket.id,
      roomCode: lobby.id,
      nickname: nickname,
    );

    await playerService.addPlayer(player);
    await lobbyService.addPlayerToLobby(lobby.id, player);

    final lobbyStream = lobbyService.streamLobbyById(lobby.id).distinct().map((
      update,
    ) {
      logger.info("Syncing lobby ${update?.id} to ${socket.id}");
      if (update == null) return null;

      socket.send(.server(.updateLobby(update)));
    });

    final subscription = lobbyStream.listen(socket.sink.add);
    subscriptionManager.add(socket.id, subscription);

    socket.send(
      ActionModel.server(ServerAction.joinLobby(player.nickname, lobby.id)),
    );
  }

  Future<void> handleDisconnect(WebSocketChannel socket) async {
    final player = await playerService.getPlayerById(socket.id);

    await Future.wait([
      subscriptionManager.clear(socket.id),
      socketService.removeSocketById(socket.id),
    ], eagerError: false);

    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    _lobbyStartTimers[player.roomCode]?.cancel();
    _lobbyStartTimers.remove(player.roomCode);

    await subscriptionManager.clear(socket.id);
    await socketService.removeSocketById(socket.id);
    await lobbyService.removePlayerFromLobby(player.roomCode, player.id);
    await playerService.removePlayerById(socket.id);
    await playerService.removePlayerGameById(socket.id);
    logger.info("Player ${socket.id} disconnected");

    final lobby = await lobbyService.getLobbyById(player.roomCode);
    if (lobby == null) {
      logger.severe("Lobby with ID '${player.roomCode}' not found");
      return;
    }

    if (lobby.players.isEmpty) {
      await lobbyService.removeLobbyById(lobby.id);
    }

    if (lobby.state == LobbyState.starting) {
      await lobbyService.updateLobby(lobby.copyWith(state: LobbyState.waiting));
    }
  }
}
