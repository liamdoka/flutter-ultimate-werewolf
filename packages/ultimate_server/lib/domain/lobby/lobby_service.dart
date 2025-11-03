import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_shared/models/server_action.dart';
import 'package:ultimate_shared/utils/id.dart';

part 'lobby_service.g.dart';

@riverpod
ILobbyService lobbyService(Ref ref) => MockLobbyService();

abstract interface class ILobbyService {
  Future<List<LobbyModel>> getAllLobbies();

  Future<LobbyModel?> getLobbyById(String id);

  Future<void> setLobbyById(String id, LobbyModel lobby);

  Stream<LobbyModel?> streamLobbyById(String id);

  Future<void> addPlayerToLobby(String id, PlayerModel player);

  Future<void> removePlayerFromLobby(String id, String playerId);

  Future<LobbyModel> createLobby();
}

class MockLobbyService implements ILobbyService {
  late final StreamController<Map<String, LobbyModel>> _controller =
      StreamController.broadcast(onListen: () => _lobbies);

  final Map<String, LobbyModel> _lobbies = <String, LobbyModel>{};

  @override
  Future<LobbyModel> createLobby() async {
    final lobby = LobbyModel(id: Id.nextSixDigit);
    _lobbies[lobby.id] = lobby;
    _controller.add(_lobbies);
    return lobby;
  }

  @override
  Future<List<LobbyModel>> getAllLobbies() async => _lobbies.values.toList();

  @override
  Future<LobbyModel?> getLobbyById(String id) async => _lobbies[id];

  @override
  Stream<LobbyModel?> streamLobbyById(String id) {
    return _controller.stream.map((lobbies) => lobbies[id]);
  }

  @override
  Future<void> addPlayerToLobby(String id, PlayerModel player) async {
    final lobby = _lobbies[id];
    if (lobby == null) return;

    final newPlayers = List.of(lobby.players)..add(player);

    _lobbies[id] = lobby.copyWith(players: newPlayers);
    _controller.add(_lobbies);
  }

  @override
  Future<void> removePlayerFromLobby(String id, String playerId) async {
    final lobby = _lobbies[id];
    if (lobby == null) return;

    final newPlayers = List.of(lobby.players)
      ..removeWhere((player) => player.id == playerId);

    _lobbies[id] = lobby.copyWith(players: newPlayers);
    _controller.add(_lobbies);
  }

  @override
  Future<void> setLobbyById(String id, LobbyModel lobby) async {
    _lobbies[id] = lobby;
    _controller.add(_lobbies);
  }
}
