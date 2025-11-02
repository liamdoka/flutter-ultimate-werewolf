
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/lobby/lobby_service.dart';
import 'package:ultimate_shared/models/server_action.dart';

part 'lobby_provider.g.dart';

@riverpod
class Lobby extends _$Lobby {

  @override
  LobbyModel? build(String id) {

    print("building lobby provider");

    final stream = ref.watch(lobbyServiceProvider).streamLobbyById(id);
    final subscription = stream.listen((lobby) {
      print("Received Lobby");
      state = lobby;
    });

    ref.onDispose(subscription.cancel);
    return null;
  }
}
