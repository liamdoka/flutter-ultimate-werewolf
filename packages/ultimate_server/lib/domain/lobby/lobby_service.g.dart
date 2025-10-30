// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lobby_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(lobbyService)
const lobbyServiceProvider = LobbyServiceProvider._();

final class LobbyServiceProvider
    extends $FunctionalProvider<ILobbyService, ILobbyService, ILobbyService>
    with $Provider<ILobbyService> {
  const LobbyServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lobbyServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lobbyServiceHash();

  @$internal
  @override
  $ProviderElement<ILobbyService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ILobbyService create(Ref ref) {
    return lobbyService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ILobbyService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ILobbyService>(value),
    );
  }
}

String _$lobbyServiceHash() => r'45d6ed94e5d9632ad67e9a8912938631ada92068';
