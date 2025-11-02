// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lobby_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Lobby)
const lobbyProvider = LobbyProvider._();

final class LobbyProvider extends $NotifierProvider<Lobby, LobbyModel> {
  const LobbyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lobbyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lobbyHash();

  @$internal
  @override
  Lobby create() => Lobby();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LobbyModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LobbyModel>(value),
    );
  }
}

String _$lobbyHash() => r'b686e3906d83b957e2308d4cc90f993ac6b268ff';

abstract class _$Lobby extends $Notifier<LobbyModel> {
  LobbyModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LobbyModel, LobbyModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LobbyModel, LobbyModel>,
              LobbyModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
