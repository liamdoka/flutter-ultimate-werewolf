import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_action.freezed.dart';
part 'client_action.g.dart';

@freezed
sealed class ClientAction with _$ClientAction {
  const factory ClientAction.changeNickname(String nickname) =
      ClientChangeNickname;

  const factory ClientAction.changeRoomCode(String roomCode) =
      ClientChangeRoomCode;

  const factory ClientAction.joinRoom(String nickname, String roomCode) =
      ClientJoinRoom;

  factory ClientAction.fromJson(Map<String, dynamic> json) =>
      _$ClientActionFromJson(json);
}
