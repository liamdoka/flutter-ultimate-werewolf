// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Player)
const playerProvider = PlayerProvider._();

final class PlayerProvider extends $NotifierProvider<Player, PlayerModel> {
  const PlayerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playerHash();

  @$internal
  @override
  Player create() => Player();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlayerModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlayerModel>(value),
    );
  }
}

String _$playerHash() => r'8555e9c9516f98647e0207919ad2af65a84ea238';

abstract class _$Player extends $Notifier<PlayerModel> {
  PlayerModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PlayerModel, PlayerModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PlayerModel, PlayerModel>,
              PlayerModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
