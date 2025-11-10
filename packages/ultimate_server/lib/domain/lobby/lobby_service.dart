import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_server/domain/lobby/mock_lobby_service.dart';
import 'package:ultimate_shared/models/lobby_model.dart';
import 'package:ultimate_shared/models/player_model.dart';

part 'lobby_service.g.dart';

@riverpod
ILobbyService lobbyService(Ref ref) => MockLobbyService();

abstract interface class ILobbyService {
  Future<List<LobbyModel>> getAllLobbies();

  Future<LobbyModel?> getLobbyById(String id);

  Future<void> updateLobby(LobbyModel lobby);

  Stream<LobbyModel?> streamLobbyById(String id);

  Future<void> addPlayerToLobby(String id, PlayerModel player);

  Future<void> updatePlayer(String id, PlayerModel player);

  Future<void> removePlayerFromLobby(String id, String playerId);

  Future<LobbyModel> createLobby();
}
