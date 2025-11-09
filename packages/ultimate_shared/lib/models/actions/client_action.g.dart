// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientChangeNickname _$ClientChangeNicknameFromJson(
  Map<String, dynamic> json,
) => ClientChangeNickname(
  json['nickname'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ClientChangeNicknameToJson(
  ClientChangeNickname instance,
) => <String, dynamic>{
  'nickname': instance.nickname,
  'runtimeType': instance.$type,
};

ClientChangeRoomCode _$ClientChangeRoomCodeFromJson(
  Map<String, dynamic> json,
) => ClientChangeRoomCode(
  json['roomCode'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ClientChangeRoomCodeToJson(
  ClientChangeRoomCode instance,
) => <String, dynamic>{
  'roomCode': instance.roomCode,
  'runtimeType': instance.$type,
};

ClientJoinRoom _$ClientJoinRoomFromJson(Map<String, dynamic> json) =>
    ClientJoinRoom(
      json['nickname'] as String,
      json['roomCode'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ClientJoinRoomToJson(ClientJoinRoom instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'roomCode': instance.roomCode,
      'runtimeType': instance.$type,
    };
