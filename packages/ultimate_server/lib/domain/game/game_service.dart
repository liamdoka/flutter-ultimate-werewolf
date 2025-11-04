import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/game/mock_game_service.dart';
import 'package:ultimate_shared/models/game_model.dart';

part 'game_service.g.dart';

@riverpod
IGameService gameService(Ref ref) => MockGameService();

abstract interface class IGameService {
  Future<GameModel?> getGameById(String id);

  Stream<GameModel?> streamGameById(String id);

  Future<void> updateGame(GameModel game);
}
