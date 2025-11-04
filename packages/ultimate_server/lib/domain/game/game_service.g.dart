// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gameService)
const gameServiceProvider = GameServiceProvider._();

final class GameServiceProvider
    extends $FunctionalProvider<IGameService, IGameService, IGameService>
    with $Provider<IGameService> {
  const GameServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameServiceHash();

  @$internal
  @override
  $ProviderElement<IGameService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IGameService create(Ref ref) {
    return gameService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IGameService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IGameService>(value),
    );
  }
}

String _$gameServiceHash() => r'628011b246ede64b55d7c64c4e161dee6b32c040';
