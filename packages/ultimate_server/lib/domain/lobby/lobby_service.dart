import 'dart:async';

import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_shared/models/server_action.dart';
import 'package:ultimate_shared/utils/id.dart';

part 'lobby_service.g.dart';

@riverpod
ILobbyService lobbyService(Ref ref) => MockLobbyService();

abstract interface class ILobbyService {
  Future<List<LobbyModel>> getAllLobbies();

  Future<LobbyModel?> getLobbyById(String id);

  Stream<LobbyModel?> streamLobbyById(String id);

  Future<LobbyModel> createLobby();
}

class MockLobbyService implements ILobbyService {
  late final StreamController<List<LobbyModel>> _controller =
      StreamController.broadcast(onListen: () => _lobbies);

  final List<LobbyModel> _lobbies = [];

  @override
  Future<LobbyModel> createLobby() async {
    final lobby = LobbyModel(id: Id.nextSixDigit);

    _lobbies.add(lobby);
    _controller.add(_lobbies);
    return lobby;
  }

  @override
  Future<List<LobbyModel>> getAllLobbies() async => _lobbies;

  @override
  Future<LobbyModel?> getLobbyById(String id) async {
    if (_lobbies.isEmpty) return null;

    return _lobbies.firstWhereOrNull((lobby) => lobby.id == id);
  }

  @override
  Stream<LobbyModel?> streamLobbyById(String id) {
    return _controller.stream.map(
      (lobbies) => lobbies.firstWhereOrNull((lobby) => lobby.id == id),
    );
  }
}
