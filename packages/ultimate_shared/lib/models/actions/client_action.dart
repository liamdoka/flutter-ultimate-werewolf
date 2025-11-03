import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'client_action.freezed.dart';

@freezed
sealed class ClientAction with _$ClientAction {
  const factory ClientAction.changeSocket(WebSocketChannel socket) =
      ClientChangeSocket;

  const factory ClientAction.changeNickname(String nickname) =
      ClientChangeNickname;

  const factory ClientAction.changeRoomCode(String roomCode) =
      ClientChangeRoomCode;

  const factory ClientAction.joinRoom(String nickname, String roomCode) =
      ClientJoinRoom;
}
