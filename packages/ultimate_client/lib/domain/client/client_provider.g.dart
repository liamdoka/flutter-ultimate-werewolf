// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Client)
const clientProvider = ClientProvider._();

final class ClientProvider extends $NotifierProvider<Client, ClientModel> {
  const ClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clientHash();

  @$internal
  @override
  Client create() => Client();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClientModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClientModel>(value),
    );
  }
}

String _$clientHash() => r'8a66c9ebe741176d6828d79890908f70be10cad9';

abstract class _$Client extends $Notifier<ClientModel> {
  ClientModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ClientModel, ClientModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ClientModel, ClientModel>,
              ClientModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
