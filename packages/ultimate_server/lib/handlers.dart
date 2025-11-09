import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/game/game_service.dart';
import 'package:ultimate_server/utils/game_helpers.dart';
import 'package:ultimate_server/domain/lobby/lobby_service.dart';
import 'package:ultimate_server/domain/player/player_service.dart';
import 'package:ultimate_server/domain/socket/socket_service.dart';
import 'package:ultimate_shared/models/actions/action_model.dart';
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
);

class ServerHandler {
  final logger = Logger("ServerHandler")..onRecord.listen(print);
  final IGameService gameService;
  final ILobbyService lobbyService;
  final IPlayerService playerService;
  final ISocketService socketService;

  ServerHandler({
    required this.gameService,
    required this.lobbyService,
    required this.playerService,
    required this.socketService,
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

        final action = ActionModel.server(ServerAction.updateLobby(lobby));
        final json = action.toJson();
        socket.sink.add(jsonEncode(json));

      case ServerUnknown():
        logger.warning("Unknown server action");
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

        final action = ActionModel.game(GameAction.updateGame(game));
        final json = action.toJson();
        socket.sink.add(jsonEncode(json));
    }
  }

  void handleDisconnect(WebSocketChannel socket) async {
    socketService.removeSocketById(socket.id);
    final player = await playerService.getPlayerById(socket.id);
    playerService.removePlayerById(socket.id);

    if (player == null) {
      logger.severe("Player with ID '${socket.id}' not found");
      return;
    }

    lobbyService.removePlayerFromLobby(player.roomCode, player.id);
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
    gameStream
        .distinct()
        .map((update) {
          if (update == null) return null;
          logger.info("Syncing game ${update.id} to ${socket.id}");
          final action = ActionModel.game(GameAction.updateGame(update));
          final json = action.toJson();
          return jsonEncode(json);
        })
        .listen(socket.sink.add);
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
    lobbyStream
        .distinct()
        .map((update) {
          logger.info("Syncing lobby ${update?.id} to ${socket.id}");
          if (update == null) return null;

          final action = ActionModel.server(ServerAction.updateLobby(update));
          final json = action.toJson();
          return jsonEncode(json);
        })
        .listen(socket.sink.add);

    final action = ActionModel.server(
      ServerAction.joinLobby(player.nickname, lobby.id),
    );
    final json = action.toJson();
    socket.sink.add(jsonEncode(json));
  }
}
