import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'actions.freezed.dart';
part 'actions.g.dart';

enum ActionType { game, server, client }

@freezed
sealed class ActionModel with _$ActionModel {
  const factory ActionModel({required ActionType type, dynamic payload}) =
      _ActionModel;

  factory ActionModel.fromJson(Map<String, dynamic> json) =>
      _$ActionModelFromJson(json);

  factory ActionModel.fromDynamic(dynamic message) {
    final json = jsonDecode(message.toString()) as Map<String, dynamic>;
    return ActionModel.fromJson(json);
  }
}
