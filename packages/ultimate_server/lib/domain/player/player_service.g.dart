// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(playerService)
const playerServiceProvider = PlayerServiceProvider._();

final class PlayerServiceProvider
    extends $FunctionalProvider<IPlayerService, IPlayerService, IPlayerService>
    with $Provider<IPlayerService> {
  const PlayerServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playerServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playerServiceHash();

  @$internal
  @override
  $ProviderElement<IPlayerService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IPlayerService create(Ref ref) {
    return playerService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IPlayerService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IPlayerService>(value),
    );
  }
}

String _$playerServiceHash() => r'a75adfae1f0f20fd4c7eb6166e97f689a6ca0f89';
