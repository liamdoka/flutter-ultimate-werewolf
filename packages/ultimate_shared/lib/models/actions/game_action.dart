import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ultimate_shared/models/game_card.dart';

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

  const factory GameAction.none() = GameNone;

  factory GameAction.fromJson(Map<String, dynamic> json) =>
      _$GameActionFromJson(json);

  factory GameAction.fromDynamic(dynamic message) {
    final json = jsonDecode(message.toString()) as Map<String, dynamic>;
    return GameAction.fromJson(json);
  }
}
