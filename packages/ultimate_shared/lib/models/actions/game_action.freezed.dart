// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
GameAction _$GameActionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'setCard':
          return GameSetCard.fromJson(
            json
          );
                case 'checkCard':
          return GameCheckCard.fromJson(
            json
          );
                case 'endTurn':
          return GameEndTurn.fromJson(
            json
          );
                case 'checkRiver':
          return GameCheckRiver.fromJson(
            json
          );
                case 'swapWithPlayer':
          return GameSwapWithPlayer.fromJson(
            json
          );
                case 'swapWithRiver':
          return GameSwapWithRiver.fromJson(
            json
          );
                case 'swapOtherPlayers':
          return GameSwapOtherPlayers.fromJson(
            json
          );
                case 'assumeForm':
          return GameAssumeForm.fromJson(
            json
          );
                case 'startGame':
          return GameStartGame.fromJson(
            json
          );
                case 'updateGame':
          return GameUpdateGame.fromJson(
            json
          );
                case 'none':
          return GameNone.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'GameAction',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$GameAction {



  /// Serializes this GameAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameAction);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameAction()';
}


}

/// @nodoc
class $GameActionCopyWith<$Res>  {
$GameActionCopyWith(GameAction _, $Res Function(GameAction) __);
}


/// Adds pattern-matching-related methods to [GameAction].
extension GameActionPatterns on GameAction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GameSetCard value)?  setCard,TResult Function( GameCheckCard value)?  checkCard,TResult Function( GameEndTurn value)?  endTurn,TResult Function( GameCheckRiver value)?  checkRiver,TResult Function( GameSwapWithPlayer value)?  swapWithPlayer,TResult Function( GameSwapWithRiver value)?  swapWithRiver,TResult Function( GameSwapOtherPlayers value)?  swapOtherPlayers,TResult Function( GameAssumeForm value)?  assumeForm,TResult Function( GameStartGame value)?  startGame,TResult Function( GameUpdateGame value)?  updateGame,TResult Function( GameNone value)?  none,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GameSetCard() when setCard != null:
return setCard(_that);case GameCheckCard() when checkCard != null:
return checkCard(_that);case GameEndTurn() when endTurn != null:
return endTurn(_that);case GameCheckRiver() when checkRiver != null:
return checkRiver(_that);case GameSwapWithPlayer() when swapWithPlayer != null:
return swapWithPlayer(_that);case GameSwapWithRiver() when swapWithRiver != null:
return swapWithRiver(_that);case GameSwapOtherPlayers() when swapOtherPlayers != null:
return swapOtherPlayers(_that);case GameAssumeForm() when assumeForm != null:
return assumeForm(_that);case GameStartGame() when startGame != null:
return startGame(_that);case GameUpdateGame() when updateGame != null:
return updateGame(_that);case GameNone() when none != null:
return none(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GameSetCard value)  setCard,required TResult Function( GameCheckCard value)  checkCard,required TResult Function( GameEndTurn value)  endTurn,required TResult Function( GameCheckRiver value)  checkRiver,required TResult Function( GameSwapWithPlayer value)  swapWithPlayer,required TResult Function( GameSwapWithRiver value)  swapWithRiver,required TResult Function( GameSwapOtherPlayers value)  swapOtherPlayers,required TResult Function( GameAssumeForm value)  assumeForm,required TResult Function( GameStartGame value)  startGame,required TResult Function( GameUpdateGame value)  updateGame,required TResult Function( GameNone value)  none,}){
final _that = this;
switch (_that) {
case GameSetCard():
return setCard(_that);case GameCheckCard():
return checkCard(_that);case GameEndTurn():
return endTurn(_that);case GameCheckRiver():
return checkRiver(_that);case GameSwapWithPlayer():
return swapWithPlayer(_that);case GameSwapWithRiver():
return swapWithRiver(_that);case GameSwapOtherPlayers():
return swapOtherPlayers(_that);case GameAssumeForm():
return assumeForm(_that);case GameStartGame():
return startGame(_that);case GameUpdateGame():
return updateGame(_that);case GameNone():
return none(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GameSetCard value)?  setCard,TResult? Function( GameCheckCard value)?  checkCard,TResult? Function( GameEndTurn value)?  endTurn,TResult? Function( GameCheckRiver value)?  checkRiver,TResult? Function( GameSwapWithPlayer value)?  swapWithPlayer,TResult? Function( GameSwapWithRiver value)?  swapWithRiver,TResult? Function( GameSwapOtherPlayers value)?  swapOtherPlayers,TResult? Function( GameAssumeForm value)?  assumeForm,TResult? Function( GameStartGame value)?  startGame,TResult? Function( GameUpdateGame value)?  updateGame,TResult? Function( GameNone value)?  none,}){
final _that = this;
switch (_that) {
case GameSetCard() when setCard != null:
return setCard(_that);case GameCheckCard() when checkCard != null:
return checkCard(_that);case GameEndTurn() when endTurn != null:
return endTurn(_that);case GameCheckRiver() when checkRiver != null:
return checkRiver(_that);case GameSwapWithPlayer() when swapWithPlayer != null:
return swapWithPlayer(_that);case GameSwapWithRiver() when swapWithRiver != null:
return swapWithRiver(_that);case GameSwapOtherPlayers() when swapOtherPlayers != null:
return swapOtherPlayers(_that);case GameAssumeForm() when assumeForm != null:
return assumeForm(_that);case GameStartGame() when startGame != null:
return startGame(_that);case GameUpdateGame() when updateGame != null:
return updateGame(_that);case GameNone() when none != null:
return none(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( GameCard card)?  setCard,TResult Function( GameCard card)?  checkCard,TResult Function()?  endTurn,TResult Function( Set<int> indices)?  checkRiver,TResult Function( String target)?  swapWithPlayer,TResult Function( int index)?  swapWithRiver,TResult Function( Set<String> players)?  swapOtherPlayers,TResult Function( String target)?  assumeForm,TResult Function()?  startGame,TResult Function( GameModel game)?  updateGame,TResult Function()?  none,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GameSetCard() when setCard != null:
return setCard(_that.card);case GameCheckCard() when checkCard != null:
return checkCard(_that.card);case GameEndTurn() when endTurn != null:
return endTurn();case GameCheckRiver() when checkRiver != null:
return checkRiver(_that.indices);case GameSwapWithPlayer() when swapWithPlayer != null:
return swapWithPlayer(_that.target);case GameSwapWithRiver() when swapWithRiver != null:
return swapWithRiver(_that.index);case GameSwapOtherPlayers() when swapOtherPlayers != null:
return swapOtherPlayers(_that.players);case GameAssumeForm() when assumeForm != null:
return assumeForm(_that.target);case GameStartGame() when startGame != null:
return startGame();case GameUpdateGame() when updateGame != null:
return updateGame(_that.game);case GameNone() when none != null:
return none();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( GameCard card)  setCard,required TResult Function( GameCard card)  checkCard,required TResult Function()  endTurn,required TResult Function( Set<int> indices)  checkRiver,required TResult Function( String target)  swapWithPlayer,required TResult Function( int index)  swapWithRiver,required TResult Function( Set<String> players)  swapOtherPlayers,required TResult Function( String target)  assumeForm,required TResult Function()  startGame,required TResult Function( GameModel game)  updateGame,required TResult Function()  none,}) {final _that = this;
switch (_that) {
case GameSetCard():
return setCard(_that.card);case GameCheckCard():
return checkCard(_that.card);case GameEndTurn():
return endTurn();case GameCheckRiver():
return checkRiver(_that.indices);case GameSwapWithPlayer():
return swapWithPlayer(_that.target);case GameSwapWithRiver():
return swapWithRiver(_that.index);case GameSwapOtherPlayers():
return swapOtherPlayers(_that.players);case GameAssumeForm():
return assumeForm(_that.target);case GameStartGame():
return startGame();case GameUpdateGame():
return updateGame(_that.game);case GameNone():
return none();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( GameCard card)?  setCard,TResult? Function( GameCard card)?  checkCard,TResult? Function()?  endTurn,TResult? Function( Set<int> indices)?  checkRiver,TResult? Function( String target)?  swapWithPlayer,TResult? Function( int index)?  swapWithRiver,TResult? Function( Set<String> players)?  swapOtherPlayers,TResult? Function( String target)?  assumeForm,TResult? Function()?  startGame,TResult? Function( GameModel game)?  updateGame,TResult? Function()?  none,}) {final _that = this;
switch (_that) {
case GameSetCard() when setCard != null:
return setCard(_that.card);case GameCheckCard() when checkCard != null:
return checkCard(_that.card);case GameEndTurn() when endTurn != null:
return endTurn();case GameCheckRiver() when checkRiver != null:
return checkRiver(_that.indices);case GameSwapWithPlayer() when swapWithPlayer != null:
return swapWithPlayer(_that.target);case GameSwapWithRiver() when swapWithRiver != null:
return swapWithRiver(_that.index);case GameSwapOtherPlayers() when swapOtherPlayers != null:
return swapOtherPlayers(_that.players);case GameAssumeForm() when assumeForm != null:
return assumeForm(_that.target);case GameStartGame() when startGame != null:
return startGame();case GameUpdateGame() when updateGame != null:
return updateGame(_that.game);case GameNone() when none != null:
return none();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class GameSetCard implements GameAction {
  const GameSetCard(this.card, {final  String? $type}): $type = $type ?? 'setCard';
  factory GameSetCard.fromJson(Map<String, dynamic> json) => _$GameSetCardFromJson(json);

 final  GameCard card;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameSetCardCopyWith<GameSetCard> get copyWith => _$GameSetCardCopyWithImpl<GameSetCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameSetCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameSetCard&&(identical(other.card, card) || other.card == card));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,card);

@override
String toString() {
  return 'GameAction.setCard(card: $card)';
}


}

/// @nodoc
abstract mixin class $GameSetCardCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory $GameSetCardCopyWith(GameSetCard value, $Res Function(GameSetCard) _then) = _$GameSetCardCopyWithImpl;
@useResult
$Res call({
 GameCard card
});




}
/// @nodoc
class _$GameSetCardCopyWithImpl<$Res>
    implements $GameSetCardCopyWith<$Res> {
  _$GameSetCardCopyWithImpl(this._self, this._then);

  final GameSetCard _self;
  final $Res Function(GameSetCard) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? card = null,}) {
  return _then(GameSetCard(
null == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as GameCard,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GameCheckCard implements GameAction {
  const GameCheckCard(this.card, {final  String? $type}): $type = $type ?? 'checkCard';
  factory GameCheckCard.fromJson(Map<String, dynamic> json) => _$GameCheckCardFromJson(json);

 final  GameCard card;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameCheckCardCopyWith<GameCheckCard> get copyWith => _$GameCheckCardCopyWithImpl<GameCheckCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameCheckCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameCheckCard&&(identical(other.card, card) || other.card == card));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,card);

@override
String toString() {
  return 'GameAction.checkCard(card: $card)';
}


}

/// @nodoc
abstract mixin class $GameCheckCardCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory $GameCheckCardCopyWith(GameCheckCard value, $Res Function(GameCheckCard) _then) = _$GameCheckCardCopyWithImpl;
@useResult
$Res call({
 GameCard card
});




}
/// @nodoc
class _$GameCheckCardCopyWithImpl<$Res>
    implements $GameCheckCardCopyWith<$Res> {
  _$GameCheckCardCopyWithImpl(this._self, this._then);

  final GameCheckCard _self;
  final $Res Function(GameCheckCard) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? card = null,}) {
  return _then(GameCheckCard(
null == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as GameCard,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GameEndTurn implements GameAction {
  const GameEndTurn({final  String? $type}): $type = $type ?? 'endTurn';
  factory GameEndTurn.fromJson(Map<String, dynamic> json) => _$GameEndTurnFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$GameEndTurnToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEndTurn);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameAction.endTurn()';
}


}




/// @nodoc
@JsonSerializable()

class GameCheckRiver implements GameAction {
  const GameCheckRiver(final  Set<int> indices, {final  String? $type}): _indices = indices,$type = $type ?? 'checkRiver';
  factory GameCheckRiver.fromJson(Map<String, dynamic> json) => _$GameCheckRiverFromJson(json);

 final  Set<int> _indices;
 Set<int> get indices {
  if (_indices is EqualUnmodifiableSetView) return _indices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_indices);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameCheckRiverCopyWith<GameCheckRiver> get copyWith => _$GameCheckRiverCopyWithImpl<GameCheckRiver>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameCheckRiverToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameCheckRiver&&const DeepCollectionEquality().equals(other._indices, _indices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_indices));

@override
String toString() {
  return 'GameAction.checkRiver(indices: $indices)';
}


}

/// @nodoc
abstract mixin class $GameCheckRiverCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory $GameCheckRiverCopyWith(GameCheckRiver value, $Res Function(GameCheckRiver) _then) = _$GameCheckRiverCopyWithImpl;
@useResult
$Res call({
 Set<int> indices
});




}
/// @nodoc
class _$GameCheckRiverCopyWithImpl<$Res>
    implements $GameCheckRiverCopyWith<$Res> {
  _$GameCheckRiverCopyWithImpl(this._self, this._then);

  final GameCheckRiver _self;
  final $Res Function(GameCheckRiver) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? indices = null,}) {
  return _then(GameCheckRiver(
null == indices ? _self._indices : indices // ignore: cast_nullable_to_non_nullable
as Set<int>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GameSwapWithPlayer implements GameAction {
  const GameSwapWithPlayer(this.target, {final  String? $type}): $type = $type ?? 'swapWithPlayer';
  factory GameSwapWithPlayer.fromJson(Map<String, dynamic> json) => _$GameSwapWithPlayerFromJson(json);

 final  String target;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameSwapWithPlayerCopyWith<GameSwapWithPlayer> get copyWith => _$GameSwapWithPlayerCopyWithImpl<GameSwapWithPlayer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameSwapWithPlayerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameSwapWithPlayer&&(identical(other.target, target) || other.target == target));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,target);

@override
String toString() {
  return 'GameAction.swapWithPlayer(target: $target)';
}


}

/// @nodoc
abstract mixin class $GameSwapWithPlayerCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory $GameSwapWithPlayerCopyWith(GameSwapWithPlayer value, $Res Function(GameSwapWithPlayer) _then) = _$GameSwapWithPlayerCopyWithImpl;
@useResult
$Res call({
 String target
});




}
/// @nodoc
class _$GameSwapWithPlayerCopyWithImpl<$Res>
    implements $GameSwapWithPlayerCopyWith<$Res> {
  _$GameSwapWithPlayerCopyWithImpl(this._self, this._then);

  final GameSwapWithPlayer _self;
  final $Res Function(GameSwapWithPlayer) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? target = null,}) {
  return _then(GameSwapWithPlayer(
null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GameSwapWithRiver implements GameAction {
  const GameSwapWithRiver(this.index, {final  String? $type}): $type = $type ?? 'swapWithRiver';
  factory GameSwapWithRiver.fromJson(Map<String, dynamic> json) => _$GameSwapWithRiverFromJson(json);

 final  int index;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameSwapWithRiverCopyWith<GameSwapWithRiver> get copyWith => _$GameSwapWithRiverCopyWithImpl<GameSwapWithRiver>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameSwapWithRiverToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameSwapWithRiver&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'GameAction.swapWithRiver(index: $index)';
}


}

/// @nodoc
abstract mixin class $GameSwapWithRiverCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory $GameSwapWithRiverCopyWith(GameSwapWithRiver value, $Res Function(GameSwapWithRiver) _then) = _$GameSwapWithRiverCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$GameSwapWithRiverCopyWithImpl<$Res>
    implements $GameSwapWithRiverCopyWith<$Res> {
  _$GameSwapWithRiverCopyWithImpl(this._self, this._then);

  final GameSwapWithRiver _self;
  final $Res Function(GameSwapWithRiver) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(GameSwapWithRiver(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GameSwapOtherPlayers implements GameAction {
  const GameSwapOtherPlayers(final  Set<String> players, {final  String? $type}): _players = players,$type = $type ?? 'swapOtherPlayers';
  factory GameSwapOtherPlayers.fromJson(Map<String, dynamic> json) => _$GameSwapOtherPlayersFromJson(json);

 final  Set<String> _players;
 Set<String> get players {
  if (_players is EqualUnmodifiableSetView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_players);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameSwapOtherPlayersCopyWith<GameSwapOtherPlayers> get copyWith => _$GameSwapOtherPlayersCopyWithImpl<GameSwapOtherPlayers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameSwapOtherPlayersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameSwapOtherPlayers&&const DeepCollectionEquality().equals(other._players, _players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_players));

@override
String toString() {
  return 'GameAction.swapOtherPlayers(players: $players)';
}


}

/// @nodoc
abstract mixin class $GameSwapOtherPlayersCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory $GameSwapOtherPlayersCopyWith(GameSwapOtherPlayers value, $Res Function(GameSwapOtherPlayers) _then) = _$GameSwapOtherPlayersCopyWithImpl;
@useResult
$Res call({
 Set<String> players
});




}
/// @nodoc
class _$GameSwapOtherPlayersCopyWithImpl<$Res>
    implements $GameSwapOtherPlayersCopyWith<$Res> {
  _$GameSwapOtherPlayersCopyWithImpl(this._self, this._then);

  final GameSwapOtherPlayers _self;
  final $Res Function(GameSwapOtherPlayers) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? players = null,}) {
  return _then(GameSwapOtherPlayers(
null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GameAssumeForm implements GameAction {
  const GameAssumeForm(this.target, {final  String? $type}): $type = $type ?? 'assumeForm';
  factory GameAssumeForm.fromJson(Map<String, dynamic> json) => _$GameAssumeFormFromJson(json);

 final  String target;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameAssumeFormCopyWith<GameAssumeForm> get copyWith => _$GameAssumeFormCopyWithImpl<GameAssumeForm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameAssumeFormToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameAssumeForm&&(identical(other.target, target) || other.target == target));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,target);

@override
String toString() {
  return 'GameAction.assumeForm(target: $target)';
}


}

/// @nodoc
abstract mixin class $GameAssumeFormCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory $GameAssumeFormCopyWith(GameAssumeForm value, $Res Function(GameAssumeForm) _then) = _$GameAssumeFormCopyWithImpl;
@useResult
$Res call({
 String target
});




}
/// @nodoc
class _$GameAssumeFormCopyWithImpl<$Res>
    implements $GameAssumeFormCopyWith<$Res> {
  _$GameAssumeFormCopyWithImpl(this._self, this._then);

  final GameAssumeForm _self;
  final $Res Function(GameAssumeForm) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? target = null,}) {
  return _then(GameAssumeForm(
null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GameStartGame implements GameAction {
  const GameStartGame({final  String? $type}): $type = $type ?? 'startGame';
  factory GameStartGame.fromJson(Map<String, dynamic> json) => _$GameStartGameFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$GameStartGameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStartGame);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameAction.startGame()';
}


}




/// @nodoc
@JsonSerializable()

class GameUpdateGame implements GameAction {
  const GameUpdateGame(this.game, {final  String? $type}): $type = $type ?? 'updateGame';
  factory GameUpdateGame.fromJson(Map<String, dynamic> json) => _$GameUpdateGameFromJson(json);

 final  GameModel game;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameUpdateGameCopyWith<GameUpdateGame> get copyWith => _$GameUpdateGameCopyWithImpl<GameUpdateGame>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameUpdateGameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameUpdateGame&&(identical(other.game, game) || other.game == game));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,game);

@override
String toString() {
  return 'GameAction.updateGame(game: $game)';
}


}

/// @nodoc
abstract mixin class $GameUpdateGameCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory $GameUpdateGameCopyWith(GameUpdateGame value, $Res Function(GameUpdateGame) _then) = _$GameUpdateGameCopyWithImpl;
@useResult
$Res call({
 GameModel game
});


$GameModelCopyWith<$Res> get game;

}
/// @nodoc
class _$GameUpdateGameCopyWithImpl<$Res>
    implements $GameUpdateGameCopyWith<$Res> {
  _$GameUpdateGameCopyWithImpl(this._self, this._then);

  final GameUpdateGame _self;
  final $Res Function(GameUpdateGame) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? game = null,}) {
  return _then(GameUpdateGame(
null == game ? _self.game : game // ignore: cast_nullable_to_non_nullable
as GameModel,
  ));
}

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameModelCopyWith<$Res> get game {
  
  return $GameModelCopyWith<$Res>(_self.game, (value) {
    return _then(_self.copyWith(game: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class GameNone implements GameAction {
  const GameNone({final  String? $type}): $type = $type ?? 'none';
  factory GameNone.fromJson(Map<String, dynamic> json) => _$GameNoneFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$GameNoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameNone);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameAction.none()';
}


}




// dart format on
