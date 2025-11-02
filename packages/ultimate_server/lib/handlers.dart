import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/lobby/lobby_service.dart';
import 'package:ultimate_server/domain/player/player_service.dart';
import 'package:ultimate_shared/models/server_action.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'handlers.g.dart';

@riverpod
ServerHandler serverHandler(Ref ref) =>
    ServerHandler(lobbyService: ref.watch(lobbyServiceProvider),
    playerService: ref.watch(playerServiceProvider)
    );

class ServerHandler {
  final ILobbyService lobbyService;
  final IPlayerService playerService;

  ServerHandler({required this.lobbyService, required this.playerService});

  void handleServerAction(ServerAction action, WebSocketChannel socket) async {
    print("Handling: $action");
    switch (action) {
      case ServerCreateRoom(:final nickname):
        print("Creating lobby...");
        final lobby = await lobbyService.createLobby();
        final player = PlayerModel(
          id: socket.hashCode.toString(),
          roomCode: lobby.id,
          nickname: nickname,
        );

        playerService.addPlayer(player);
        lobbyService.addPlayerToLobby(lobby.id, player);

        final json = ServerAction.joinRoom(nickname, lobby.id).toJson();
        socket.sink.add(jsonEncode(json));

      case ServerJoinRoom(:final nickname, :final roomCode):
        print("Tried to add $nickname to $roomCode");
        final lobby = await lobbyService.getLobbyById(roomCode);
        if (lobby == null) throw ArgumentError();

        final player = PlayerModel(
          id: socket.hashCode.toString(),
          roomCode: lobby.id,
          nickname: nickname,
        );

        playerService.addPlayer(player);
        lobbyService.addPlayerToLobby(lobby.id, player);

        final json = ServerAction.joinRoom(nickname, lobby.id).toJson();
        socket.sink.add(jsonEncode(json));
      case ServerUpdateLobby():
      case ServerSyncLobby():
        final player = await playerService.getPlayerById(socket.hashCode.toString());
        if (player == null) return;

        final lobby = await lobbyService.getLobbyById(player.roomCode);
        if (lobby == null) return;

        final json = ServerAction.updateLobby(lobby).toJson();
        socket.sink.add(jsonEncode(json));

      case ServerUnknown():
    }
  }
}
