import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_client/domain/lobby/lobby_provider.dart';
import 'package:ultimate_client/domain/models/client_model.dart';
import 'package:ultimate_client/router/router.dart';
import 'package:ultimate_client/router/router.gr.dart';
import 'package:ultimate_shared/utils/id.dart';
import 'package:ultimate_shared/models/client_action.dart';
import 'package:ultimate_shared/models/server_action.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'client_provider.g.dart';

@Riverpod(keepAlive: true)
class Client extends _$Client {
  @override
  ClientModel build() {
    final socket = WebSocketChannel.connect(Uri.parse("ws://localhost:8080"));
    final subscription = socket.stream
        .map<ServerAction>(ServerAction.fromDynamic)
        .listen(handleServerAction);

    ref.onDispose(subscription.cancel);
    ref.onDispose(socket.sink.close);

    return ClientModel(id: Id.next, socket: socket);
  }

  void send(ClientAction action) {
    switch (action) {
      case ClientChangeSocket(:final socket):
        state = state.copyWith(socket: socket);
      case ClientChangeNickname(:final nickname):
        state = state.copyWith(nickname: nickname);
      case ClientChangeRoomCode(:final roomCode):
        state = state.copyWith(roomCode: roomCode);
      case ClientJoinRoom(:final nickname, :final roomCode):
        state = state.copyWith(nickname: nickname, roomCode: roomCode);
    }
  }

  void sendServerAction(ServerAction action) {
    print("Sent: $action");
    final json = action.toJson();
    state.socket.sink.add(jsonEncode(json));
  }

  void handleServerAction(ServerAction action) {
    print("Received: $action");
    final lobbyNotifier = ref.read(lobbyProvider.notifier);

    switch (action) {
      case ServerUpdateLobby(:final lobby):
        lobbyNotifier.setLobby(lobby);

      case ServerJoinRoom(:final nickname, :final roomCode):
        state = state.copyWith(
          nickname: nickname,
          roomCode: roomCode
        );
        ref.read(appRouterProvider).navigate(const LobbyRoute());

      case ServerCreateRoom():
      case ServerSyncLobby():
      case ServerUnknown():
      // Do nothing
    }
  }
}
