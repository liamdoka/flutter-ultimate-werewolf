// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerCreateRoom _$ServerCreateRoomFromJson(Map<String, dynamic> json) =>
    ServerCreateRoom(
      json['nickname'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerCreateRoomToJson(ServerCreateRoom instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'runtimeType': instance.$type,
    };

ServerJoinRoom _$ServerJoinRoomFromJson(Map<String, dynamic> json) =>
    ServerJoinRoom(
      json['nickname'] as String,
      json['roomCode'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerJoinRoomToJson(ServerJoinRoom instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
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

_LobbyModel _$LobbyModelFromJson(Map<String, dynamic> json) => _LobbyModel(
  id: json['id'] as String,
  admin: json['admin'] as String?,
  state:
      $enumDecodeNullable(_$LobbyStateEnumMap, json['state']) ??
      LobbyState.waiting,
  discussionTime: (json['discussionTime'] as num?)?.toInt() ?? 90,
  players:
      (json['players'] as List<dynamic>?)
          ?.map((e) => PlayerModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$LobbyModelToJson(_LobbyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'admin': instance.admin,
      'state': _$LobbyStateEnumMap[instance.state]!,
      'discussionTime': instance.discussionTime,
      'players': instance.players,
    };

const _$LobbyStateEnumMap = {
  LobbyState.waiting: 'waiting',
  LobbyState.starting: 'starting',
  LobbyState.running: 'running',
  LobbyState.ended: 'ended',
};

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
