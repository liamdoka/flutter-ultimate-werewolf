import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_action.freezed.dart';
part 'server_action.g.dart';

@freezed
sealed class ServerAction with _$ServerAction {
  const factory ServerAction.createRoom(String nickname) = ServerCreateRoom;

  const factory ServerAction.joinRoom(String nickname, String roomCode) =
      ServerJoinRoom;

  const factory ServerAction.updateLobby(LobbyModel lobby) = ServerUpdateLobby;

  const factory ServerAction.syncLobby() = ServerSyncLobby;

  const factory ServerAction.unknown() = ServerUnknown;

  factory ServerAction.fromJson(Map<String, dynamic> json) =>
      _$ServerActionFromJson(json);

  factory ServerAction.fromDynamic(dynamic message) {
    final json = jsonDecode(message.toString()) as Map<String, dynamic>;
    final action = ServerAction.fromJson(json);

    print(action);
    return action;
  }
}

@freezed
sealed class LobbyModel with _$LobbyModel {
  const factory LobbyModel({
    required String id,
    String? admin,
    @Default(LobbyState.waiting) LobbyState state,
    @Default(90) int discussionTime,
    @Default([]) List<PlayerModel> players,
  }) = _LobbyModel;

  factory LobbyModel.fromJson(Map<String, dynamic> json) =>
      _$LobbyModelFromJson(json);
}

enum LobbyState { waiting, starting, running, ended }

@freezed
sealed class PlayerModel with _$PlayerModel {
  const factory PlayerModel({
    required String socketId,
    required String nickname,
    @Default(false) bool isReady,
  }) = _PlayerModel;

  factory PlayerModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerModelFromJson(json);
}
