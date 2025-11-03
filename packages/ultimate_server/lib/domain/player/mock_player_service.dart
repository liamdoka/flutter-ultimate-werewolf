import 'package:ultimate_server/domain/player/player_service.dart';
import 'package:ultimate_shared/models/server_action.dart';

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
