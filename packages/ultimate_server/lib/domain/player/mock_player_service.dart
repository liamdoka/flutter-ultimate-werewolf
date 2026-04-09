import 'package:ultimate_server/domain/player/player_service.dart';
import 'package:ultimate_shared/models/game_model.dart';
import 'package:ultimate_shared/models/player_model.dart';

class MockPlayerService implements IPlayerService {
  final _players = <String, PlayerModel>{};
  final _playerGames = <String, PlayerGameModel>{};

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

  @override
  Future<void> setPlayerGame(
    PlayerGameModel playerGame, {
    required String playerId,
  }) async {
    _playerGames[playerId] = playerGame;
  }

  @override
  Future<void> removePlayerGameById(String playerId) async {
    _playerGames.remove(playerId);
  }

  @override
  Future<PlayerGameModel?> getPlayerGameById(String playerId) async {
    return _playerGames[playerId];
  }
}
