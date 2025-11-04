// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActionModel _$ActionModelFromJson(Map<String, dynamic> json) => _ActionModel(
  type: $enumDecode(_$ActionTypeEnumMap, json['type']),
  payload: json['payload'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ActionModelToJson(_ActionModel instance) =>
    <String, dynamic>{
      'type': _$ActionTypeEnumMap[instance.type]!,
      'payload': instance.payload,
    };

const _$ActionTypeEnumMap = {
  ActionType.game: 'game',
  ActionType.server: 'server',
  ActionType.client: 'client',
};
