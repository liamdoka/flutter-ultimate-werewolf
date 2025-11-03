import "dart:math";

import "package:uuid/uuid.dart";
import "package:web_socket_channel/web_socket_channel.dart";

abstract class Id {
  static Uuid get uuid => const Uuid();
  static Random get random => Random();

  static String get next => uuid.v4();
  static String get nextSixDigit =>
      random.nextInt(999999).toString().padLeft(6, '0');
}

extension WebSocketChannelId on WebSocketChannel {
  String get id => hashCode.toString();
}
