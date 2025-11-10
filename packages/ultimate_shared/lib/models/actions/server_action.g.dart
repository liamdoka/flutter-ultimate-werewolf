// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerCreateLobby _$ServerCreateLobbyFromJson(Map<String, dynamic> json) =>
    ServerCreateLobby(
      json['nickname'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerCreateLobbyToJson(ServerCreateLobby instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'runtimeType': instance.$type,
    };

ServerJoinLobby _$ServerJoinLobbyFromJson(Map<String, dynamic> json) =>
    ServerJoinLobby(
      json['nickname'] as String,
      json['roomCode'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerJoinLobbyToJson(ServerJoinLobby instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'roomCode': instance.roomCode,
      'runtimeType': instance.$type,
    };

ServerUpdateNickname _$ServerUpdateNicknameFromJson(
  Map<String, dynamic> json,
) => ServerUpdateNickname(
  json['nickname'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ServerUpdateNicknameToJson(
  ServerUpdateNickname instance,
) => <String, dynamic>{
  'nickname': instance.nickname,
  'runtimeType': instance.$type,
};

ServerSetReady _$ServerSetReadyFromJson(Map<String, dynamic> json) =>
    ServerSetReady(
      json['isReady'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerSetReadyToJson(ServerSetReady instance) =>
    <String, dynamic>{
      'isReady': instance.isReady,
      'runtimeType': instance.$type,
    };

ServerLeaveLobby _$ServerLeaveLobbyFromJson(Map<String, dynamic> json) =>
    ServerLeaveLobby(
      json['roomCode'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerLeaveLobbyToJson(ServerLeaveLobby instance) =>
    <String, dynamic>{
      'roomCode': instance.roomCode,
      'runtimeType': instance.$type,
    };

ServerUpdateLobby _$ServerUpdateLobbyFromJson(Map<String, dynamic> json) =>
    ServerUpdateLobby(
      LobbyModel.fromJson(json['lobby'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerUpdateLobbyToJson(ServerUpdateLobby instance) =>
    <String, dynamic>{'lobby': instance.lobby, 'runtimeType': instance.$type};

ServerSyncLobby _$ServerSyncLobbyFromJson(Map<String, dynamic> json) =>
    ServerSyncLobby($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ServerSyncLobbyToJson(ServerSyncLobby instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

ServerUnknown _$ServerUnknownFromJson(Map<String, dynamic> json) =>
    ServerUnknown($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ServerUnknownToJson(ServerUnknown instance) =>
    <String, dynamic>{'runtimeType': instance.$type};
