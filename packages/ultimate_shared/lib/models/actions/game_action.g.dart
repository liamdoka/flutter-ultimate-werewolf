// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameSetCard _$GameSetCardFromJson(Map<String, dynamic> json) => GameSetCard(
  $enumDecode(_$GameCardEnumMap, json['card']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$GameSetCardToJson(GameSetCard instance) =>
    <String, dynamic>{
      'card': _$GameCardEnumMap[instance.card]!,
      'runtimeType': instance.$type,
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
  GameCard.unknown: 'unknown',
};

GameCheckCard _$GameCheckCardFromJson(Map<String, dynamic> json) =>
    GameCheckCard(
      $enumDecode(_$GameCardEnumMap, json['card']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GameCheckCardToJson(GameCheckCard instance) =>
    <String, dynamic>{
      'card': _$GameCardEnumMap[instance.card]!,
      'runtimeType': instance.$type,
    };

GameEndTurn _$GameEndTurnFromJson(Map<String, dynamic> json) =>
    GameEndTurn($type: json['runtimeType'] as String?);

Map<String, dynamic> _$GameEndTurnToJson(GameEndTurn instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

GameCheckRiver _$GameCheckRiverFromJson(Map<String, dynamic> json) =>
    GameCheckRiver(
      (json['indices'] as List<dynamic>).map((e) => (e as num).toInt()).toSet(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GameCheckRiverToJson(GameCheckRiver instance) =>
    <String, dynamic>{
      'indices': instance.indices.toList(),
      'runtimeType': instance.$type,
    };

GameSwapWithPlayer _$GameSwapWithPlayerFromJson(Map<String, dynamic> json) =>
    GameSwapWithPlayer(
      json['target'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GameSwapWithPlayerToJson(GameSwapWithPlayer instance) =>
    <String, dynamic>{'target': instance.target, 'runtimeType': instance.$type};

GameSwapWithRiver _$GameSwapWithRiverFromJson(Map<String, dynamic> json) =>
    GameSwapWithRiver(
      (json['index'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GameSwapWithRiverToJson(GameSwapWithRiver instance) =>
    <String, dynamic>{'index': instance.index, 'runtimeType': instance.$type};

GameSwapOtherPlayers _$GameSwapOtherPlayersFromJson(
  Map<String, dynamic> json,
) => GameSwapOtherPlayers(
  (json['players'] as List<dynamic>).map((e) => e as String).toSet(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$GameSwapOtherPlayersToJson(
  GameSwapOtherPlayers instance,
) => <String, dynamic>{
  'players': instance.players.toList(),
  'runtimeType': instance.$type,
};

GameAssumeForm _$GameAssumeFormFromJson(Map<String, dynamic> json) =>
    GameAssumeForm(
      json['target'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GameAssumeFormToJson(GameAssumeForm instance) =>
    <String, dynamic>{'target': instance.target, 'runtimeType': instance.$type};

GameStartGame _$GameStartGameFromJson(Map<String, dynamic> json) =>
    GameStartGame($type: json['runtimeType'] as String?);

Map<String, dynamic> _$GameStartGameToJson(GameStartGame instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

GameUpdateGame _$GameUpdateGameFromJson(Map<String, dynamic> json) =>
    GameUpdateGame(
      PlayerGameModel.fromJson(json['game'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GameUpdateGameToJson(GameUpdateGame instance) =>
    <String, dynamic>{'game': instance.game, 'runtimeType': instance.$type};

GameUpdateState _$GameUpdateStateFromJson(Map<String, dynamic> json) =>
    GameUpdateState(
      $enumDecode(_$GameStateEnumMap, json['state']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GameUpdateStateToJson(GameUpdateState instance) =>
    <String, dynamic>{
      'state': _$GameStateEnumMap[instance.state]!,
      'runtimeType': instance.$type,
    };

const _$GameStateEnumMap = {
  GameState.dealing: 'dealing',
  GameState.playing: 'playing',
  GameState.discussing: 'discussing',
  GameState.voting: 'voting',
  GameState.ended: 'ended',
};

GameInitialize _$GameInitializeFromJson(Map<String, dynamic> json) =>
    GameInitialize($type: json['runtimeType'] as String?);

Map<String, dynamic> _$GameInitializeToJson(GameInitialize instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

GameNone _$GameNoneFromJson(Map<String, dynamic> json) =>
    GameNone($type: json['runtimeType'] as String?);

Map<String, dynamic> _$GameNoneToJson(GameNone instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};
