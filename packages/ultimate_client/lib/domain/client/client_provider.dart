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
import 'package:ultimate_shared/models/lobby_model.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'client_provider.g.dart';

@Riverpod(keepAlive: true)
class Client extends _$Client {
  static const _defaultUrl = 'ws://localhost:8080';
  static const _maxRetries = 5;
  static const _retryDelay = Duration(seconds: 2);

  int _retryCount = 0;

  @override
  ClientModel build() {
    final socket = WebSocketChannel.connect(Uri.parse(_defaultUrl));
    final subscription = socket.stream
        .map<ActionModel>(ActionModel.fromDynamic)
        .listen(
          _handleAction,
          onError: _handleError,
          onDone: _handleDisconnect,
        );

    ref.onDispose(subscription.cancel);
    ref.onDispose(socket.sink.close);

    return ClientModel(
      socket: socket,
      connectionState: ConnectionState.connected,
    );
  }

  void _handleError(Object error) {
    print("WebSocket error: $error");
    state = state.copyWith(connectionState: ConnectionState.disconnected);
    _attemptReconnect();
  }

  void _handleDisconnect() {
    print("WebSocket disconnected");
    state = state.copyWith(connectionState: ConnectionState.disconnected);
    _attemptReconnect();
  }

  Future<void> _attemptReconnect() async {
    if (_retryCount >= _maxRetries) {
      print("Max reconnection attempts reached");
      return;
    }

    _retryCount++;
    state = state.copyWith(connectionState: ConnectionState.reconnecting);
    print("Attempting to reconnect ($_retryCount/$_maxRetries)...");

    final delay = _retryDelay * _retryCount;
    await Future<void>.delayed(delay);
    ref.invalidateSelf();
  }

  void send(ClientAction action) => _handleClientAction(action);

  void sendServerAction(ServerAction action) {
    final json = ActionModel.server(action).toJson();
    state.socket.sink.add(jsonEncode(json));
  }

  void sendGameAction(GameAction action) {
    final json = ActionModel.game(action).toJson();
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
      case ActionType.client:
        final clientAction = ClientAction.fromJson(action.payload);
        _handleClientAction(clientAction);
    }
  }

  void _handleServerAction(ServerAction action) {
    print("Received: $action");

    switch (action) {
      case ServerUpdateLobby(:final lobby):
        ref.read(lobbyProvider.notifier).setLobby(lobby);
        if (lobby.state == LobbyState.running) {
          ref.read(appRouterProvider).navigate(const GameRoute());
        }

      case ServerJoinLobby(:final nickname, :final roomCode):
        state = state.copyWith(nickname: nickname, roomCode: roomCode);
        ref.read(appRouterProvider).navigate(const LobbyRoute());

      case ServerLeaveLobby():
        ref.read(appRouterProvider).replaceAll([const LoginRoute()]);
        ref.invalidateSelf();

      case ServerCreateLobby():
      case ServerSyncLobby():
      case ServerUnknown():
      case ServerUpdateNickname():
      case ServerSetReady():
      // Do nothing
    }
  }

  void _handleGameAction(GameAction action) {
    print("Received: $action");
    final gameNotifier = ref.read(gameProvider.notifier);

    switch (action) {
      case GameSetCard():
      case GameCheckCard():
      case GameCheckRiver():
      case GameSwapWithPlayer():
      case GameSwapWithRiver():
      case GameSwapOtherPlayers():
      case GameAssumeForm():
      case GameStartGame():
        throw UnimplementedError();

      case GameUpdateGame(:final game):
        gameNotifier.setGame(game);

      // `state` is a name that's taken so we're renaming it `gameState`
      case GameUpdateState(state: final gameState):
        gameNotifier.setState(gameState);

      case GameInitialize():
      case GameEndTurn():
      case GameNone():
      // Do nothing
    }
  }

  void _handleClientAction(ClientAction action) {
    print("Received: $action");

    switch (action) {
      case ClientChangeNickname(:final nickname):
        state = state.copyWith(nickname: nickname);
      case ClientChangeRoomCode(:final roomCode):
        state = state.copyWith(roomCode: roomCode);
      case ClientJoinRoom(:final nickname, :final roomCode):
        state = state.copyWith(nickname: nickname, roomCode: roomCode);
    }
  }
}
