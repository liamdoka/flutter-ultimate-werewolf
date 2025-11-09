import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_client/utils/ref_extensions.dart';
import 'package:ultimate_shared/models/actions/game_action.dart';
import 'package:ultimate_shared/models/game_model.dart';
import 'package:ultimate_shared/utils/id.dart';

part 'game_provider.g.dart';

@riverpod
class Game extends _$Game {
  @override
  GameModel? build() {
    ref.client.sendGameAction(const GameAction.syncGame());
    return GameModel(id: Id.nextSixDigit);
  }

  void setGame(GameModel game) {
    state = game;
  }
}
