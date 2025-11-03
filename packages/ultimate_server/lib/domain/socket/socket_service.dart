import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/socket/mock_socket_service.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'socket_service.g.dart';

@riverpod
ISocketService socketService(Ref ref) => MockSocketService();

abstract interface class ISocketService {
  Future<void> addSocket(WebSocketChannel socket);

  Future<WebSocketChannel?> getSocketById(String id);

  Future<void> removeSocketById(String id);

  Future<void> removeAll();
}
