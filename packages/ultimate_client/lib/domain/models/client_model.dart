import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'client_model.freezed.dart';

enum ConnectionState { connecting, connected, disconnected, reconnecting }

@freezed
sealed class ClientModel with _$ClientModel {
  const factory ClientModel({
    required WebSocketChannel socket,
    String? nickname,
    String? roomCode,
    @Default(ConnectionState.connecting) ConnectionState connectionState,
  }) = _ClientModel;

  const ClientModel._();

  bool get isInLobby => nickname != null && roomCode != null;
  bool get isNotInLobby => !isInLobby;
}
