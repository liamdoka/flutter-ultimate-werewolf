// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handlers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(serverHandler)
const serverHandlerProvider = ServerHandlerProvider._();

final class ServerHandlerProvider
    extends $FunctionalProvider<ServerHandler, ServerHandler, ServerHandler>
    with $Provider<ServerHandler> {
  const ServerHandlerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'serverHandlerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$serverHandlerHash();

  @$internal
  @override
  $ProviderElement<ServerHandler> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ServerHandler create(Ref ref) {
    return serverHandler(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ServerHandler value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ServerHandler>(value),
    );
  }
}

String _$serverHandlerHash() => r'a4324de4286c981d93030a654f1576c48cae3a90';
