import 'package:flutter/material.dart';
import 'package:ultimate_client/components/app_scaffold.dart';
import 'package:ultimate_client/router/router.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  static const brightness = Brightness.dark;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      routerConfig: router.config(),
      theme: buildTheme(brightness),
      builder: (context, child) => AppScaffold(child: child),
    );
  }
}
