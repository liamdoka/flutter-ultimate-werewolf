import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_shared/models/server_action.dart';

part 'player_service.g.dart';

@riverpod
IPlayerService playerService(Ref ref) => MockPlayerService();

abstract interface class IPlayerService {
  Future<PlayerModel?> getPlayerById(String id);

  Future<void> addPlayer(PlayerModel player);

  Future<void> removePlayerById(String id);

  Future<List<PlayerModel>> getAllPlayers();
}

class MockPlayerService implements IPlayerService {
  final _players = <String, PlayerModel>{};

  @override
  Future<List<PlayerModel>> getAllPlayers() async {
    return _players.values.toList();
  }

  @override
  Future<PlayerModel?> getPlayerById(String id) async {
    return _players[id];
  }

  @override
  Future<void> removePlayerById(String id) async {
    _players.remove(id);
  }

  @override
  Future<void> addPlayer(PlayerModel player) async {
    _players[player.id] = player;
  }
}
