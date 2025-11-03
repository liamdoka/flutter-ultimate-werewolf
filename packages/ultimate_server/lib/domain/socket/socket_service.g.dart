// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(socketService)
const socketServiceProvider = SocketServiceProvider._();

final class SocketServiceProvider
    extends $FunctionalProvider<ISocketService, ISocketService, ISocketService>
    with $Provider<ISocketService> {
  const SocketServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'socketServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$socketServiceHash();

  @$internal
  @override
  $ProviderElement<ISocketService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ISocketService create(Ref ref) {
    return socketService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ISocketService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ISocketService>(value),
    );
  }
}

String _$socketServiceHash() => r'c5c2deffa1b46e32ddc2a9863b06f99fbfd30cbe';
