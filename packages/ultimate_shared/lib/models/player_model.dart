import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_model.freezed.dart';
part 'player_model.g.dart';

@freezed
sealed class PlayerModel with _$PlayerModel {
  const factory PlayerModel({
    required String id,
    required String nickname,
    required String roomCode,
    @Default(false) bool isReady,
  }) = _PlayerModel;

  factory PlayerModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerModelFromJson(json);
}
