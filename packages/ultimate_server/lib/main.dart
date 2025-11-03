import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:ultimate_server/handlers.dart';
import 'package:ultimate_shared/models/actions/actions.dart';
import 'package:ultimate_shared/utils/id.dart';

Future<void> main() async {
  const port = 8080;

  final container = ProviderContainer();
  final handler = container.read(serverHandlerProvider);

  final wsHandler = webSocketHandler((socket, _) {
    print("Connected: ${socket.id}");
    handler.socketService.addSocket(socket);
    socket.stream
        .map(ActionModel.fromDynamic)
        .listen(
          (action) => handler.handleAction(action, socket: socket),
          onDone: () => handler.socketService.removeSocketById(socket.id),
        );
  });

  final wsServer = await shelf_io.serve(
    wsHandler,
    'localhost',
    port,
    shared: true,
  );

  final httpHandler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(_echoRequest);

  final httpServer =
      await shelf_io.serve(httpHandler, "localhost", port, shared: true)
        ..autoCompress = true;

  print('Serving at http://${httpServer.address.host}:${httpServer.port}');
  print('Serving at ws://${wsServer.address.host}:${wsServer.port}');
}

Response _echoRequest(Request request) =>
    Response.ok('Request for ${request.url}');
