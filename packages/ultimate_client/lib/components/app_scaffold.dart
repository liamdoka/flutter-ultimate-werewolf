import 'package:flutter/material.dart';
import 'package:ultimate_client/constants/sizes.dart';

class AppScaffold extends StatelessWidget {
  final Widget? child;
  const AppScaffold({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: BoxSizes.xxl),
          child: SingleChildScrollView(child: child),
        ),
      ),
    );
  }
}
