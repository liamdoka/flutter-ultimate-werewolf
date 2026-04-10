import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ultimate_shared/models/game_card.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

enum GameState { dealing, playing, discussing, voting, ended }

enum Winner { team, bluSpy }

@freezed
sealed class GameModel with _$GameModel {
  const factory GameModel({
    required String id,
    @Default({}) Map<String, GameCard> startCards,
    @Default({}) Map<String, GameCard> endCards,
    @Default([]) List<GameCard> riverCards,
    @Default([]) List<Set<String>> turns,
    @Default({}) Map<String, String> votes,
    @Default(GameState.dealing) GameState state,
    @Default(0) int currentTurnIndex,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}

@freezed
sealed class PlayerGameModel with _$PlayerGameModel {
  const factory PlayerGameModel({
    required String gameId,
    required String playerId,
    @Default({}) Map<String, GameCard> playerCards,
    @Default([]) List<GameCard> riverCards,
    @Default(GameState.dealing) GameState state,
    @Default(false) bool isPlayerTurn,
    Winner? winner,
  }) = _PlayerGameModel;

  factory PlayerGameModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerGameModelFromJson(json);
}
