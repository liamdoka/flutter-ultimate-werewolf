import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ultimate_shared/models/game_card.dart';
import 'package:ultimate_shared/models/player_model.dart';

part 'lobby_model.freezed.dart';
part 'lobby_model.g.dart';

@freezed
sealed class LobbyModel with _$LobbyModel {
  const factory LobbyModel({
    required String id,
    String? admin,
    @Default([
      GameCard.bluSpy,
      GameCard.soldier,
      GameCard.soldier,
      GameCard.soldier,
      GameCard.soldier,
    ])
    List<GameCard> deck,
    @Default(LobbyState.waiting) LobbyState state,
    @Default(90) int discussionTime,
    @Default([]) List<PlayerModel> players,
  }) = _LobbyModel;

  factory LobbyModel.fromJson(Map<String, dynamic> json) =>
      _$LobbyModelFromJson(json);
}

enum LobbyState { waiting, starting, running, ended }
