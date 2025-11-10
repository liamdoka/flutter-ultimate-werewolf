import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_client/domain/client/client_provider.dart';
import 'package:ultimate_client/domain/lobby/lobby_provider.dart';
import 'package:ultimate_shared/models/player_model.dart';

part 'player_provider.g.dart';

@riverpod
class Player extends _$Player {
  @override
  PlayerModel build() {
    final client = ref.watch(clientProvider);
    final lobby = ref.watch(lobbyProvider);

    return lobby.players.firstWhere(
      (p) => p.nickname == client.nickname,
      orElse: () => const PlayerModel(id: "", nickname: "", roomCode: ""),
    );
  }

  void setPlayer(PlayerModel? player) {
    if (player == null) return;
    state = player;
  }
}
