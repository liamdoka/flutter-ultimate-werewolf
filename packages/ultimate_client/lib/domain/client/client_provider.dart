import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_client/domain/game_provider.dart';
import 'package:ultimate_client/domain/lobby/lobby_provider.dart';
import 'package:ultimate_client/domain/models/client_model.dart';
import 'package:ultimate_client/router/router.dart';
import 'package:ultimate_client/router/router.gr.dart';
import 'package:ultimate_shared/models/actions/action_model.dart';
import 'package:ultimate_shared/models/actions/client_action.dart';
import 'package:ultimate_shared/models/actions/game_action.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'client_provider.g.dart';

@Riverpod(keepAlive: true)
class Client extends _$Client {
  @override
  ClientModel build() {
    final socket = WebSocketChannel.connect(Uri.parse("ws://localhost:8080"));
    final subscription = socket.stream
        .map<ActionModel>(ActionModel.fromDynamic)
        .listen(_handleAction);

    ref.onDispose(subscription.cancel);
    ref.onDispose(socket.sink.close);

    return ClientModel(socket: socket);
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

    final payload = ActionModel(
      type: ActionType.server,
      payload: action.toJson(),
    );
    final json = payload.toJson();
    state.socket.sink.add(jsonEncode(json));
  }

  void sendGameAction(GameAction action) {
    print("Sent: $action");
    final payload = ActionModel(type: ActionType.game,
      payload: action.toJson()
    );
    final json = payload.toJson();
    state.socket.sink.add(jsonEncode(json));
  }

  void _handleAction(ActionModel action) {
    switch (action.type) {
      case ActionType.server:
        final serverAction = ServerAction.fromJson(action.payload);
        _handleServerAction(serverAction);
      case ActionType.game:
        final gameAction = GameAction.fromJson(action.payload);
        _handleGameAction(gameAction);
      default:
        print(action);
        break;
    }
  }

  void _handleServerAction(ServerAction action) {
    print("Received: $action");
    final lobbyNotifier = ref.read(lobbyProvider.notifier);

    switch (action) {
      case ServerUpdateLobby(:final lobby):
        lobbyNotifier.setLobby(lobby);

      case ServerJoinLobby(:final nickname, :final roomCode):
        state = state.copyWith(nickname: nickname, roomCode: roomCode);
        ref.read(appRouterProvider).navigate(const LobbyRoute());

      case ServerCreateLobby():
      case ServerSyncLobby():
      case ServerUnknown():
      // Do nothing
    }
  }

  void _handleGameAction(GameAction action) {
    print("Received: $action");
    final gameNotifier = ref.read(gameProvider.notifier);

    switch (action) {

      case GameSetCard():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameCheckCard():
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
      case GameStartGame():
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameUpdateGame(:final game):
        gameNotifier.setGame(game);
      case GameSyncGame():
      case GameEndTurn():
      case GameNone():
        // Do nothing
    }
  }
}
