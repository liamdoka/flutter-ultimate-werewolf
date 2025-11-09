import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ultimate_shared/models/actions/client_action.dart';
import 'package:ultimate_shared/models/actions/game_action.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';

part 'action_model.freezed.dart';
part 'action_model.g.dart';

enum ActionType { game, server, client }

@freezed
sealed class ActionModel with _$ActionModel {
  const factory ActionModel({
    required ActionType type,
    @Default({}) Map<String, dynamic> payload,
  }) = _ActionModel;

  factory ActionModel.game(GameAction action) =>
      ActionModel(type: ActionType.game, payload: action.toJson());

  factory ActionModel.server(ServerAction action) =>
      ActionModel(type: ActionType.server, payload: action.toJson());

  factory ActionModel.client(ClientAction action) =>
      ActionModel(type: ActionType.client, payload: action.toJson());

  factory ActionModel.fromJson(Map<String, dynamic> json) =>
      _$ActionModelFromJson(json);

  factory ActionModel.fromDynamic(dynamic message) {
    final json = jsonDecode(message.toString()) as Map<String, dynamic>;
    return ActionModel.fromJson(json);
  }
}
