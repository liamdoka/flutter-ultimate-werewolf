import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/game/game_service.dart';
import 'package:ultimate_server/domain/lobby/lobby_service.dart';
import 'package:ultimate_server/domain/player/player_service.dart';
import 'package:ultimate_server/domain/socket/socket_service.dart';
import 'package:ultimate_server/domain/subscriptions/subscription_manager.dart';
import 'package:ultimate_server/utils/game_helpers.dart';
import 'package:ultimate_shared/models/actions/action_model.dart';
import 'package:ultimate_shared/models/actions/client_action.dart';
import 'package:ultimate_shared/models/actions/game_action.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';
import 'package:ultimate_shared/models/game_card.dart';
import 'package:ultimate_shared/models/game_model.dart';
import 'package:ultimate_shared/models/lobby_model.dart';
import 'package:ultimate_shared/models/player_model.dart';
import 'package:ultimate_shared/utils/id.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'handlers.g.dart';

@riverpod
ServerHandler serverHandler(Ref ref) => ServerHandler(
  gameService: ref.watch(gameServiceProvider),
  lobbyService: ref.watch(lobbyServiceProvider),
  playerService: ref.watch(playerServiceProvider),
  socketService: ref.watch(socketServiceProvider),
  subscriptionManager: SubscriptionManager(),
);

class ServerHandler {
  final logger = Logger("ServerHandler")..onRecord.listen(print);
  final IGameService gameService;
  final ILobbyService lobbyService;
  final IPlayerService playerService;
  final ISocketService socketService;
  final SubscriptionManager subscriptionManager;

  ServerHandler({
    required this.gameService,
    required this.lobbyService,
    required this.playerService,
    required this.socketService,
    required this.subscriptionManager,
  });

  void handleAction(ActionModel action, {required WebSocketChannel socket}) {
    switch (action.type) {
      case ActionType.server:
        final serverAction = ServerAction.fromJson(action.payload);
        _handleServerAction(serverAction, socket: socket);
      case ActionType.game:
        final gameAction = GameAction.fromJson(action.payload);
        _handleGameAction(gameAction, socket: socket);
      default:
        print(action);
        break;
    }
  }

  void _handleServerAction(
    ServerAction action, {
    required WebSocketChannel socket,
  }) async {
    logger.log(Level.INFO, "Handling $action");

    switch (action) {
      case ServerCreateLobby(:final nickname):
        final lobby = await lobbyService.createLobby();
        _addPlayerToLobby(socket: socket, lobby: lobby, nickname: nickname);

      case ServerJoinLobby(:final nickname, :final roomCode):
        final lobby = await lobbyService.getLobbyById(roomCode);
        if (lobby == null) {
          logger.severe("Lobby with ID '$roomCode' not found");
          return;
        }
        _addPlayerToLobby(socket: socket, lobby: lobby, nickname: nickname);

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

        final json = ActionModel.server(
          ServerAction.updateLobby(lobby),
        ).toJson();
        socket.sink.add(jsonEncode(json));

      case ServerUnknown():
        logger.warning("Unknown server action");

      case ServerUpdateNickname(:final nickname):
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }

        final newPlayer = player.copyWith(nickname: nickname);
        await Future.wait([
          playerService.addPlayer(newPlayer),
          lobbyService.updatePlayer(newPlayer.roomCode, newPlayer),
        ], eagerError: false);

        final json = ActionModel.client(
          ClientAction.changeNickname(nickname),
        ).toJson();
        socket.sink.add(jsonEncode(json));

      case ServerLeaveLobby():
        await handleDisconnect(socket);

      case ServerSetReady(:final isReady):
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }
        final newPlayer = player.copyWith(isReady: isReady);

        await Future.wait([
          lobbyService.updatePlayer(player.roomCode, newPlayer),
          playerService.addPlayer(newPlayer),
        ], eagerError: false);

        final lobby = await lobbyService.getLobbyById(player.roomCode);
        if (lobby == null) {
          logger.severe("Lobby with ID '${player.roomCode}' not found");
          return;
        }

        final allPlayersAreReady = !lobby.players.any(
          (player) => !player.isReady,
        );
        if (lobby.players.isNotEmpty && allPlayersAreReady) {
          await lobbyService.updateLobby(
            lobby.copyWith(state: LobbyState.starting),
          );
        } else if (lobby.state != LobbyState.waiting) {
          await lobbyService.updateLobby(
            lobby.copyWith(state: LobbyState.waiting),
          );
        }
    }
  }

  Future<void> _handleGameAction(
    GameAction action, {
    required WebSocketChannel socket,
  }) async {
    switch (action) {
      case GameSetCard():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameCheckCard():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameEndTurn():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameCheckRiver():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameSwapWithPlayer():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameSwapWithRiver():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameSwapOtherPlayers():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameAssumeForm():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameNone():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameStartGame():
        _startGame(socket);
      case GameUpdateGame(:final game):
        gameService.updateGame(game);
      case GameSyncGame():
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

        final json = ActionModel.game(GameAction.updateGame(game)).toJson();
        socket.sink.add(jsonEncode(json));
    }
  }

  Future<void> handleDisconnect(WebSocketChannel socket) async {
    await Future.wait([
      subscriptionManager.clear(socket.id),
      socketService.removeSocketById(socket.id),
    ]);

    final player = await playerService.getPlayerById(socket.id);
    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    await Future.wait([
      lobbyService.removePlayerFromLobby(player.roomCode, player.id),
      playerService.removePlayerById(socket.id),
    ]);
    logger.info("Player ${socket.id} disconnected");
  }

  Future<void> _startGame(WebSocketChannel socket) async {
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

    await lobbyService.updateLobby(lobby.copyWith(state: LobbyState.running));

    final game = GameModel(id: player.roomCode);
    final shuffledPlayers = lobby.players.shuffled();
    final shuffledCards = lobby.deck.sublist(1).shuffled();
    shuffledCards.insert(0, GameCard.bluSpy);

    for (var i = 0; i < shuffledCards.length; i++) {
      final card = shuffledCards[i];
      if (i < shuffledPlayers.length) {
        final player = shuffledPlayers[i];
        game.startCards[player.id] = card;
      } else {
        game.riverCards.add(card);
      }
    }

    final turnOrder = GameHelpers.calculateTurnOrder(game.startCards);
    gameService.updateGame(
      game.copyWith(turns: turnOrder, state: GameState.dealing),
    );

    final gameStream = gameService.streamGameById(game.id);
    final subscription = gameStream
        .distinct()
        .map((update) {
          if (update == null) return null;
          logger.info("Syncing game ${update.id} to ${socket.id}");
          final json = ActionModel.game(GameAction.updateGame(update)).toJson();
          return jsonEncode(json);
        })
        .listen(socket.sink.add);

    subscriptionManager.add(socket.id, subscription);
  }

  /// When a player first logs into a game room.
  Future<void> _addPlayerToLobby({
    required WebSocketChannel socket,
    required LobbyModel lobby,
    required String nickname,
  }) async {
    final player = PlayerModel(
      id: socket.id,
      roomCode: lobby.id,
      nickname: nickname,
    );

    playerService.addPlayer(player);
    lobbyService.addPlayerToLobby(lobby.id, player);

    final lobbyStream = lobbyService.streamLobbyById(lobby.id);
    final subscription = lobbyStream
        .distinct()
        .map((update) {
          logger.info("Syncing lobby ${update?.id} to ${socket.id}");
          if (update == null) return null;

          final json = ActionModel.server(
            ServerAction.updateLobby(update),
          ).toJson();
          return jsonEncode(json);
        })
        .listen(socket.sink.add);

    subscriptionManager.add(socket.id, subscription);

    final json = ActionModel.server(
      ServerAction.joinLobby(player.nickname, lobby.id),
    ).toJson();
    socket.sink.add(jsonEncode(json));
  }
}
