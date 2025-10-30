

import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/lobby/lobby_service.dart';
import 'package:ultimate_shared/models/server_action.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'handlers.g.dart';

@riverpod
ServerHandler serverHandler(Ref ref) => ServerHandler(lobbyService: ref.watch(lobbyServiceProvider));

class ServerHandler {
  final ILobbyService lobbyService;

  ServerHandler({required this.lobbyService});

  void handleServerAction(ServerAction action, WebSocketChannel socket) async {
    print("Handling: $action");
    switch (action) {
      case ServerCreateRoom(:final nickname):
        print("Creating lobby...");
        final lobby = await lobbyService.createLobby();

        print("Created: $lobby");

        final json = ServerAction.joinRoom(nickname, lobby.id).toJson();
        socket.sink.add(jsonEncode(json));

      case ServerJoinRoom(:final nickname, :final roomCode):
        print("Tried to add $nickname to $roomCode");

      case ServerUpdateLobby():
      case ServerSyncLobby():
      case ServerUnknown():
    }
  }
}
