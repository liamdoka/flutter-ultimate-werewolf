import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_shared/models/server_action.dart';
import 'package:ultimate_shared/utils/id.dart';

part 'lobby_provider.g.dart';

@riverpod
class Lobby extends _$Lobby {
  @override
  LobbyModel build() {
    return LobbyModel(id: Id.nextSixDigit);
  }

  void setLobby(LobbyModel lobby) {
    state = lobby;
  }
}
