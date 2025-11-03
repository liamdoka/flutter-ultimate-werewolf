import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_client/utils/ref_extensions.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';
import 'package:ultimate_shared/models/lobby_model.dart';
import 'package:ultimate_shared/utils/id.dart';

part 'lobby_provider.g.dart';

@riverpod
class Lobby extends _$Lobby {
  @override
  LobbyModel build() {
    // kick off a websocket request for the current lobby state
    ref.client.sendServerAction(const ServerAction.syncLobby());
    return LobbyModel(id: Id.nextSixDigit);
  }

  void setLobby(LobbyModel lobby) {
    state = lobby;
  }
}
