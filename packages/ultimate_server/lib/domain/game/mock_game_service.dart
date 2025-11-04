import 'dart:async';

import 'package:ultimate_server/domain/game/game_service.dart';
import 'package:ultimate_shared/models/game_model.dart';

class MockGameService implements IGameService {
  late final StreamController<Map<String, GameModel>> _controller =
      StreamController.broadcast(onListen: () => _games);

  final _games = <String, GameModel>{};

  @override
  Future<GameModel?> getGameById(String id) async {
    return _games[id];
  }

  @override
  Stream<GameModel?> streamGameById(String id) {
    return _controller.stream.map((games) => games[id]);
  }

  @override
  Future<void> updateGame(GameModel game) async {
    _games[game.id] = game;
    _controller.sink.add(_games);
  }
}
