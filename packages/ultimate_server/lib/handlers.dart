import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/lobby/lobby_service.dart';
import 'package:ultimate_server/domain/player/player_service.dart';
import 'package:ultimate_server/domain/socket/socket_service.dart';
import 'package:ultimate_shared/models/actions/actions.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';
import 'package:ultimate_shared/models/lobby_model.dart';
import 'package:ultimate_shared/models/player_model.dart';
import 'package:ultimate_shared/utils/id.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'handlers.g.dart';

@riverpod
ServerHandler serverHandler(Ref ref) => ServerHandler(
  lobbyService: ref.watch(lobbyServiceProvider),
  playerService: ref.watch(playerServiceProvider),
  socketService: ref.watch(socketServiceProvider),
);

class ServerHandler {
  final logger = Logger("ServerHandler")..onRecord.listen(print);
  final ILobbyService lobbyService;
  final IPlayerService playerService;
  final ISocketService socketService;

  ServerHandler({
    required this.lobbyService,
    required this.playerService,
    required this.socketService,
  });

  void handleAction(ActionModel action, {required WebSocketChannel socket}) {
    switch (action.type) {
      case ActionType.server:
        final serverAction = ServerAction.fromJson(action.payload as Map<String, dynamic>);
        _handleServerAction(serverAction, socket: socket);
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
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }

        await lobbyService.setLobbyById(player.roomCode, lobby);

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

        final json = ServerAction.updateLobby(lobby).toJson();
        socket.sink.add(jsonEncode(json));

      case ServerUnknown():
        logger.warning("Unknown server action");
    }
  }

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
          final json = ServerAction.updateLobby(update).toJson();
          return jsonEncode(json);
        })
        .listen(socket.sink.add);

    final json = ServerAction.joinLobby(player.nickname, lobby.id).toJson();
    socket.sink.add(jsonEncode(json));
  }
}
