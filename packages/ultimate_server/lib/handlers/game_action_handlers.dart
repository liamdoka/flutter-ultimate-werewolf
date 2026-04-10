part of 'handlers.dart';

extension GameActionHandlers on ServerHandler {
  Future<void> _handleGameAction(
    GameAction action, {
    required WebSocketChannel socket,
  }) async {
    switch (action) {
      case GameSetCard(:final card):
        await _handleSetCard(socket, card);
      case GameCheckCard(:final card):
        await _handleCheckCard(socket, card);
      case GameCheckRiver(:final indices):
        await _handleCheckRiver(socket, indices);
      case GameSwapWithPlayer(:final target):
        await _handleSwapWithPlayer(socket, target);
      case GameSwapWithRiver(:final index):
        await _handleSwapWithRiver(socket, index);
      case GameSwapOtherPlayers(:final players):
        await _handleSwapOtherPlayers(socket, players);
      case GameAssumeForm(:final target):
        await _handleAssumeForm(socket, target);
      case GameEndTurn():
      case GameNone():
        return;
      case GameStartGame():
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }
        await _startGame(player.roomCode);

      case GameInitialize():
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }

        final game = await gameService.getGameById(player.roomCode);
        if (game == null) {
          logger.severe("Game with ID '${player.roomCode}' not found");
          return;
        }

        final playerGame = GameHelpers.getInitialPlayerGameModel(
          game: game,
          player: player,
        );
        socket.send(ActionModel.game(GameAction.updateGame(playerGame)));

      case GameUpdateGame():
        logger.warning("GameUpdateGame should not be called on the server");

      case GameUpdateState(:final state):
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }

        final game = await gameService.getGameById(player.roomCode);
        if (game == null) {
          logger.severe("Game with ID '${player.roomCode}' not found");
          return;
        }

        await gameService.updateGame(game.copyWith(state: state));
    }
  }

  Future<void> _handleSetCard(WebSocketChannel socket, GameCard card) async {
    final player = await playerService.getPlayerById(socket.id);
    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    final game = await gameService.getGameById(player.roomCode);
    if (game == null) {
      logger.severe("Game with ID '${player.roomCode}' not found");
      return;
    }

    final updatedStartCards = Map<String, GameCard>.from(game.startCards);
    updatedStartCards[player.id] = card;

    await gameService.updateGame(game.copyWith(startCards: updatedStartCards));
  }

  Future<void> _handleCheckCard(WebSocketChannel socket, GameCard card) async {
    final player = await playerService.getPlayerById(socket.id);
    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    final game = await gameService.getGameById(player.roomCode);
    if (game == null) {
      logger.severe("Game with ID '${player.roomCode}' not found");
      return;
    }

    final playerGame = GameHelpers.getInitialPlayerGameModel(
      game: game,
      player: player,
    );

    final visibleCards = Map<String, GameCard>.from(playerGame.playerCards);
    visibleCards[player.id] = card;

    final updatedPlayerGame = playerGame.copyWith(playerCards: visibleCards);
    socket.send(.game(.updateGame(updatedPlayerGame)));
  }

  Future<void> _handleCheckRiver(
    WebSocketChannel socket,
    Set<int> indices,
  ) async {
    final player = await playerService.getPlayerById(socket.id);
    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    final game = await gameService.getGameById(player.roomCode);
    if (game == null) {
      logger.severe("Game with ID '${player.roomCode}' not found");
      return;
    }

    final seenRiverCards = game.riverCards
        .asMap()
        .entries
        .map(
          (entry) =>
              indices.contains(entry.key) ? entry.value : GameCard.unknown,
        )
        .toList();

    final playerGame = GameHelpers.getInitialPlayerGameModel(
      game: game,
      player: player,
    );
    final updatedPlayerGame = playerGame.copyWith(riverCards: seenRiverCards);

    socket.send(.game(.updateGame(updatedPlayerGame)));
  }

  Future<void> _handleSwapWithPlayer(
    WebSocketChannel socket,
    String target,
  ) async {
    final player = await playerService.getPlayerById(socket.id);
    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    final game = await gameService.getGameById(player.roomCode);
    if (game == null) {
      logger.severe("Game with ID '${player.roomCode}' not found");
      return;
    }

    final playerCard = game.startCards[player.id];
    final targetCard = game.startCards[target];

    if (playerCard == null || targetCard == null) {
      logger.severe("Player or target card not found");
      return;
    }

    final updatedStartCards = Map<String, GameCard>.from(game.startCards);
    updatedStartCards[player.id] = targetCard;
    updatedStartCards[target] = playerCard;

    final updatedGame = game.copyWith(
      startCards: updatedStartCards,
      endCards: updatedStartCards,
    );
    await gameService.updateGame(updatedGame);

    await _broadcastGameUpdate(game.id, updatedGame, excludePlayer: player.id);
  }

  Future<void> _handleSwapWithRiver(WebSocketChannel socket, int index) async {
    final player = await playerService.getPlayerById(socket.id);
    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    final game = await gameService.getGameById(player.roomCode);
    if (game == null) {
      logger.severe("Game with ID '${player.roomCode}' not found");
      return;
    }

    if (index < 0 || index >= game.riverCards.length) {
      logger.warning("Invalid river card index: $index");
      return;
    }

    final playerCard = game.startCards[player.id];
    final riverCard = game.riverCards[index];

    if (playerCard == null) {
      logger.severe("Player card not found");
      return;
    }

    final updatedStartCards = Map<String, GameCard>.from(game.startCards);
    updatedStartCards[player.id] = riverCard;

    final updatedRiverCards = List<GameCard>.from(game.riverCards);
    updatedRiverCards[index] = playerCard;

    final updatedGame = game.copyWith(
      startCards: updatedStartCards,
      riverCards: updatedRiverCards,
      endCards: updatedStartCards,
    );
    await gameService.updateGame(updatedGame);

    await _broadcastGameUpdate(game.id, updatedGame, excludePlayer: player.id);
  }

  Future<void> _handleSwapOtherPlayers(
    WebSocketChannel socket,
    Set<String> players,
  ) async {
    final player = await playerService.getPlayerById(socket.id);
    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    final game = await gameService.getGameById(player.roomCode);
    if (game == null) {
      logger.severe("Game with ID '${player.roomCode}' not found");
      return;
    }

    final playerList = players.toList();
    if (playerList.length != 2) {
      logger.warning("SwapOtherPlayers requires exactly 2 players");
      return;
    }

    final card1 = game.startCards[playerList[0]];
    final card2 = game.startCards[playerList[1]];

    if (card1 == null || card2 == null) {
      logger.severe("One or both player cards not found");
      return;
    }

    final updatedStartCards = Map<String, GameCard>.from(game.startCards);
    updatedStartCards[playerList[0]] = card2;
    updatedStartCards[playerList[1]] = card1;

    final updatedGame = game.copyWith(
      startCards: updatedStartCards,
      endCards: updatedStartCards,
    );
    await gameService.updateGame(updatedGame);

    await _broadcastGameUpdate(game.id, updatedGame);
  }

  Future<void> _handleAssumeForm(WebSocketChannel socket, String target) async {
    final player = await playerService.getPlayerById(socket.id);
    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    final game = await gameService.getGameById(player.roomCode);
    if (game == null) {
      logger.severe("Game with ID '${player.roomCode}' not found");
      return;
    }

    final targetCard = game.startCards[target];
    if (targetCard == null) {
      logger.severe("Target card not found");
      return;
    }

    final playerGame = GameHelpers.getInitialPlayerGameModel(
      game: game,
      player: player,
    );

    final visibleCards = Map<String, GameCard>.from(playerGame.playerCards);
    visibleCards[target] = targetCard;

    final updatedPlayerGame = playerGame.copyWith(playerCards: visibleCards);

    socket.send(.game(.updateGame(updatedPlayerGame)));
  }

  Future<void> _broadcastGameUpdate(
    String gameId,
    GameModel game, {
    String? excludePlayer,
  }) async {
    final players = await playerService.getAllPlayers();
    final gamePlayers = players.where((p) => p.roomCode == gameId).toList();

    for (final p in gamePlayers) {
      if (excludePlayer != null && p.id == excludePlayer) continue;

      final socket = await socketService.getSocketById(p.id);
      if (socket == null) continue;

      final playerGame = GameHelpers.getInitialPlayerGameModel(
        game: game,
        player: p,
      );

      socket.send(.game(.updateGame(playerGame)));
    }
  }
}
