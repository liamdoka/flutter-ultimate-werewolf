// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Game)
const gameProvider = GameProvider._();

final class GameProvider extends $NotifierProvider<Game, PlayerGameModel> {
  const GameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameHash();

  @$internal
  @override
  Game create() => Game();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlayerGameModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlayerGameModel>(value),
    );
  }
}

String _$gameHash() => r'2c29bacf2cf3309a25ba3eb88bf955af1a9e81f9';

abstract class _$Game extends $Notifier<PlayerGameModel> {
  PlayerGameModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PlayerGameModel, PlayerGameModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PlayerGameModel, PlayerGameModel>,
              PlayerGameModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
