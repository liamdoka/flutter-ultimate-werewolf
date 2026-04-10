import 'dart:convert';

import 'package:ultimate_shared/models/actions/action_model.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

extension UltimateSocket on WebSocketChannel {
  void send(ActionModel action) {
    final json = jsonEncode(action.toJson());
    sink.add(json);
  }
}
