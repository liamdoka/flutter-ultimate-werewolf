import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ultimate_shared/models/lobby_model.dart';

part 'server_action.freezed.dart';
part 'server_action.g.dart';

@freezed
sealed class ServerAction with _$ServerAction {
  const factory ServerAction.createLobby(String nickname) = ServerCreateLobby;

  const factory ServerAction.joinLobby(String nickname, String roomCode) =
      ServerJoinLobby;

  const factory ServerAction.updateLobby(LobbyModel lobby) = ServerUpdateLobby;

  const factory ServerAction.syncLobby() = ServerSyncLobby;

  const factory ServerAction.unknown() = ServerUnknown;

  factory ServerAction.fromJson(Map<String, dynamic> json) =>
      _$ServerActionFromJson(json);
}
