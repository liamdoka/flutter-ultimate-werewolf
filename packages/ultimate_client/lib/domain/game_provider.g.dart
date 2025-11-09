// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Game)
const gameProvider = GameProvider._();

final class GameProvider extends $NotifierProvider<Game, GameModel?> {
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
  Override overrideWithValue(GameModel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameModel?>(value),
    );
  }
}

String _$gameHash() => r'faee7b991d06d993c6a620d26f5c409836b42f64';

abstract class _$Game extends $Notifier<GameModel?> {
  GameModel? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<GameModel?, GameModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GameModel?, GameModel?>,
              GameModel?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
