import 'dart:async';

import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/game/game_service.dart' hide gameService;
import 'package:ultimate_server/domain/lobby/lobby_service.dart'
    hide lobbyService;
import 'package:ultimate_server/domain/player/player_service.dart'
    hide playerService;
import 'package:ultimate_server/domain/socket/socket_service.dart'
    hide socketService;
import 'package:ultimate_server/domain/subscriptions/subscription_manager.dart'
    hide subscriptionManager;
import 'package:ultimate_server/utils/game_helpers.dart';
import 'package:ultimate_shared/constants/durations.dart';
import 'package:ultimate_shared/models/actions/action_model.dart';
import 'package:ultimate_shared/models/actions/client_action.dart';
import 'package:ultimate_shared/models/actions/game_action.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';
import 'package:ultimate_shared/models/game_card.dart';
import 'package:ultimate_shared/models/game_model.dart';
import 'package:ultimate_shared/models/lobby_model.dart';
import 'package:ultimate_shared/models/player_model.dart';
import 'package:ultimate_shared/utils/id.dart';
import 'package:ultimate_shared/utils/socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'game_action_handlers.dart';
part 'handlers.g.dart';
part 'server_action_handlers.dart';
part 'test_handlers.dart';

@riverpod
ServerHandler serverHandler(Ref ref) => ServerHandler(
  gameService: ref.watch(gameServiceProvider),
  lobbyService: ref.watch(lobbyServiceProvider),
  playerService: ref.watch(playerServiceProvider),
  socketService: ref.watch(socketServiceProvider),
  subscriptionManager: ref.watch(subscriptionManagerProvider),
);

class ServerHandler {
  final logger = Logger("ServerHandler");
  final IGameService gameService;
  final ILobbyService lobbyService;
  final IPlayerService playerService;
  final ISocketService socketService;
  final SubscriptionManager subscriptionManager;
  final Map<String, Timer> _lobbyStartTimers = {};

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
    }
  }
}
