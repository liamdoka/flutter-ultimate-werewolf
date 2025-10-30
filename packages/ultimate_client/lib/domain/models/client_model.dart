import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'client_model.freezed.dart';

@freezed
sealed class ClientModel with _$ClientModel {
  const factory ClientModel({
    required String id,
    required WebSocketChannel socket,
    String? nickname,
    String? roomCode,
  }) = _ClientModel;

  const ClientModel._();

  bool get isInLobby => nickname != null || roomCode != null;
  bool get isNotInLobby => !isInLobby;
}
