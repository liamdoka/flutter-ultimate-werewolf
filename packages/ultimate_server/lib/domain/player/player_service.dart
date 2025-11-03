import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/player/mock_player_service.dart';
import 'package:ultimate_shared/models/player_model.dart';

part 'player_service.g.dart';

@riverpod
IPlayerService playerService(Ref ref) => MockPlayerService();

abstract interface class IPlayerService {
  Future<PlayerModel?> getPlayerById(String id);

  Future<void> addPlayer(PlayerModel player);

  Future<void> removePlayerById(String id);

  Future<List<PlayerModel>> getAllPlayers();
}
