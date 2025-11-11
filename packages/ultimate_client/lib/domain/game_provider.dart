import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_client/utils/ref_extensions.dart';
import 'package:ultimate_shared/models/actions/game_action.dart';
import 'package:ultimate_shared/models/game_model.dart';

part 'game_provider.g.dart';

@riverpod
class Game extends _$Game {
  @override
  PlayerGameModel build() {
    ref.client.sendGameAction(const GameAction.initialize());
    return const PlayerGameModel(gameId: "", playerId: "");
  }

  void setGame(PlayerGameModel game) {
    state = game;
  }

  void setState(GameState gameState) {
    state = state.copyWith(state: gameState);
  }
}
