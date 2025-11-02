// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lobby_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Lobby)
const lobbyProvider = LobbyFamily._();

final class LobbyProvider extends $NotifierProvider<Lobby, LobbyModel?> {
  const LobbyProvider._({
    required LobbyFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'lobbyProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$lobbyHash();

  @override
  String toString() {
    return r'lobbyProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Lobby create() => Lobby();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LobbyModel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LobbyModel?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LobbyProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$lobbyHash() => r'a888fe416aa85b6b4078b162bb6d5b4ab5eebfa2';

final class LobbyFamily extends $Family
    with
        $ClassFamilyOverride<
          Lobby,
          LobbyModel?,
          LobbyModel?,
          LobbyModel?,
          String
        > {
  const LobbyFamily._()
    : super(
        retry: null,
        name: r'lobbyProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LobbyProvider call(String id) => LobbyProvider._(argument: id, from: this);

  @override
  String toString() => r'lobbyProvider';
}

abstract class _$Lobby extends $Notifier<LobbyModel?> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  LobbyModel? build(String id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<LobbyModel?, LobbyModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LobbyModel?, LobbyModel?>,
              LobbyModel?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
