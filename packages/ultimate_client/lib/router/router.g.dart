// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appRouter)
const appRouterProvider = AppRouterProvider._();

final class AppRouterProvider
    extends $FunctionalProvider<AppRouter, AppRouter, AppRouter>
    with $Provider<AppRouter> {
  const AppRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appRouterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  @$internal
  @override
  $ProviderElement<AppRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppRouter create(Ref ref) {
    return appRouter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppRouter>(value),
    );
  }
}

String _$appRouterHash() => r'f9a95df86bd1005192073b44413b8ecdcf6517fd';
