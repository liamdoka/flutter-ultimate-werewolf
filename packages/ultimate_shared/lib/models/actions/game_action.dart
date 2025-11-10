import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ultimate_shared/models/game_card.dart';
import 'package:ultimate_shared/models/game_model.dart';

part 'game_action.freezed.dart';
part 'game_action.g.dart';

@freezed
sealed class GameAction with _$GameAction {
  const factory GameAction.setCard(GameCard card) = GameSetCard;

  const factory GameAction.checkCard(GameCard card) = GameCheckCard;

  const factory GameAction.endTurn() = GameEndTurn;

  const factory GameAction.checkRiver(Set<int> indices) = GameCheckRiver;

  const factory GameAction.swapWithPlayer(String target) = GameSwapWithPlayer;

  const factory GameAction.swapWithRiver(int index) = GameSwapWithRiver;

  const factory GameAction.swapOtherPlayers(Set<String> players) =
      GameSwapOtherPlayers;

  const factory GameAction.assumeForm(String target) = GameAssumeForm;

  const factory GameAction.startGame() = GameStartGame;

  /// Used by the server to grant players their first game state.
  const factory GameAction.updateGame(PlayerGameModel game) = GameUpdateGame;

  /// Used by the server to transition the game state for all players.
  const factory GameAction.updateGameState(GameState state) = GameUpdateState;

  /// Used by players to request the first game state.
  const factory GameAction.initialize() = GameInitialize;

  const factory GameAction.none() = GameNone;

  factory GameAction.fromJson(Map<String, dynamic> json) =>
      _$GameActionFromJson(json);
}
