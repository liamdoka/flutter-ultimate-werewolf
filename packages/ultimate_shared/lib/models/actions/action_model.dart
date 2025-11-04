import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_model.freezed.dart';
part 'action_model.g.dart';

enum ActionType { game, server, client }

@freezed
sealed class ActionModel with _$ActionModel {
  const factory ActionModel({
    required ActionType type,
    @Default({}) Map<String, dynamic> payload,
  }) = _ActionModel;

  factory ActionModel.fromJson(Map<String, dynamic> json) =>
      _$ActionModelFromJson(json);

  factory ActionModel.fromDynamic(dynamic message) {
    final json = jsonDecode(message.toString()) as Map<String, dynamic>;
    return ActionModel.fromJson(json);
  }
}
