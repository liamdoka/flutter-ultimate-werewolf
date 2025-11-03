// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlayerModel _$PlayerModelFromJson(Map<String, dynamic> json) => _PlayerModel(
  id: json['id'] as String,
  nickname: json['nickname'] as String,
  roomCode: json['roomCode'] as String,
  isReady: json['isReady'] as bool? ?? false,
);

Map<String, dynamic> _$PlayerModelToJson(_PlayerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'roomCode': instance.roomCode,
      'isReady': instance.isReady,
    };
