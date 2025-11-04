// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameModel _$GameModelFromJson(Map<String, dynamic> json) => _GameModel(
  id: json['id'] as String,
  startCards:
      (json['startCards'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$GameCardEnumMap, e)),
      ) ??
      const {},
  endCards:
      (json['endCards'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$GameCardEnumMap, e)),
      ) ??
      const {},
  riverCards:
      (json['riverCards'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$GameCardEnumMap, e))
          .toList() ??
      const [],
  turns:
      (json['turns'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toSet())
          .toList() ??
      const [],
  state:
      $enumDecodeNullable(_$GameStateEnumMap, json['state']) ??
      GameState.dealing,
);

Map<String, dynamic> _$GameModelToJson(
  _GameModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'startCards': instance.startCards.map(
    (k, e) => MapEntry(k, _$GameCardEnumMap[e]!),
  ),
  'endCards': instance.endCards.map(
    (k, e) => MapEntry(k, _$GameCardEnumMap[e]!),
  ),
  'riverCards': instance.riverCards.map((e) => _$GameCardEnumMap[e]!).toList(),
  'turns': instance.turns.map((e) => e.toList()).toList(),
  'state': _$GameStateEnumMap[instance.state]!,
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

const _$GameStateEnumMap = {
  GameState.dealing: 'dealing',
  GameState.playing: 'playing',
  GameState.discussing: 'discussing',
  GameState.voting: 'voting',
  GameState.ended: 'ended',
};
