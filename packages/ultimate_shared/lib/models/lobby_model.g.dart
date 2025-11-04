// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lobby_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LobbyModel _$LobbyModelFromJson(Map<String, dynamic> json) => _LobbyModel(
  id: json['id'] as String,
  admin: json['admin'] as String?,
  deck:
      (json['deck'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$GameCardEnumMap, e))
          .toList() ??
      const [],
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
      'deck': instance.deck.map((e) => _$GameCardEnumMap[e]!).toList(),
      'state': _$LobbyStateEnumMap[instance.state]!,
      'discussionTime': instance.discussionTime,
      'players': instance.players,
    };

const _$GameCardEnumMap = {
  GameCard.soldier: 'soldier',
  GameCard.engineer: 'engineer',
  GameCard.medic: 'medic',
  GameCard.pyro: 'pyro',
  GameCard.scout: 'scout',
  GameCard.spy: 'spy',
  GameCard.demoman: 'demoman',
  GameCard.bluSpy: 'bluSpy',
};

const _$LobbyStateEnumMap = {
  LobbyState.waiting: 'waiting',
  LobbyState.starting: 'starting',
  LobbyState.running: 'running',
  LobbyState.ended: 'ended',
};
