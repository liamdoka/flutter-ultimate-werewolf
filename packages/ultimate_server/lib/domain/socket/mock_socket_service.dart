import 'package:ultimate_server/domain/socket/socket_service.dart';
import 'package:ultimate_shared/utils/id.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MockSocketService implements ISocketService {
  final _sockets = <String, WebSocketChannel>{};

  @override
  Future<WebSocketChannel?> getSocketById(String id) async {
    return _sockets[id];
  }

  @override
  Future<void> removeAll() async {
    _sockets.clear();
  }

  @override
  Future<void> removeSocketById(String id) async {
    _sockets.remove(id);
  }

  @override
  Future<void> addSocket(WebSocketChannel socket) async {
    _sockets[socket.id] = socket;
  }
}
