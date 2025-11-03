import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/lobby/lobby_service.dart';
import 'package:ultimate_server/domain/player/player_service.dart';
import 'package:ultimate_shared/models/server_action.dart';
import 'package:ultimate_shared/utils/id.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'handlers.g.dart';

@riverpod
ServerHandler serverHandler(Ref ref) => ServerHandler(
  lobbyService: ref.watch(lobbyServiceProvider),
  playerService: ref.watch(playerServiceProvider),
);

class ServerHandler {
  final logger = Logger("ServerHandler");
  final ILobbyService lobbyService;
  final IPlayerService playerService;

  ServerHandler({required this.lobbyService, required this.playerService});

  void handleServerAction(
    ServerAction action, {
    required WebSocketChannel socket,
  }) async {
    logger.log(Level.INFO, "Handling $action");

    switch (action) {
      case ServerCreateLobby(:final nickname):
        final lobby = await lobbyService.createLobby();
        final player = PlayerModel(
          id: socket.id,
          roomCode: lobby.id,
          nickname: nickname,
        );

        playerService.addPlayer(player);
        lobbyService.addPlayerToLobby(lobby.id, player);

        final json = ServerAction.joinLobby(nickname, lobby.id).toJson();
        socket.sink.add(jsonEncode(json));

      case ServerJoinLobby(:final nickname, :final roomCode):
        final lobby = await lobbyService.getLobbyById(roomCode);
        if (lobby == null) {
          logger.severe("Lobby with ID '$roomCode' not found");
          return;
        }

        final player = PlayerModel(
          id: socket.id,
          roomCode: lobby.id,
          nickname: nickname,
        );

        playerService.addPlayer(player);
        lobbyService.addPlayerToLobby(lobby.id, player);

        final json = ServerAction.joinLobby(nickname, lobby.id).toJson();
        socket.sink.add(jsonEncode(json));

      case ServerUpdateLobby(:final lobby):
        final player = await playerService.getPlayerById(socket.id);
        if (player == null) {
          logger.severe("Player with ID '${socket.id}' not found");
          return;
        }

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
}
