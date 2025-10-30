import 'package:flutter/painting.dart';

abstract class Spacing {
  static const xxs = 4.0;
  static const xs = 8.0;
  static const sm = 12.0;
  static const md = 16.0;
  static const lg = 20.0;
  static const xl = 24.0;
  static const xxl = 28.0;
}

abstract class BigSpacing {
  static const xxs = 32.0;
  static const xs = 48.0;
  static const sm = 64.0;
  static const md = 80.0;
  static const lg = 96.0;
  static const xl = 112.0;
  static const xxl = 128.0;
}

abstract class BoxSizes {
  static const xxs = 192.0;
  static const xs = 256.0;
  static const sm = 320.0;
  static const md = 384.0;
  static const lg = 448.0;
  static const xl = 512.0;
  static const xxl = 576.0;
}

abstract class Rounding {
  static const xxs = BorderRadius.all(Radius.circular(Spacing.xxs));
  static const xs = BorderRadius.all(Radius.circular(Spacing.xs));
  static const sm = BorderRadius.all(Radius.circular(Spacing.sm));
  static const md = BorderRadius.all(Radius.circular(Spacing.md));
  static const lg = BorderRadius.all(Radius.circular(Spacing.lg));
  static const xl = BorderRadius.all(Radius.circular(Spacing.xl));
  static const xxl = BorderRadius.all(Radius.circular(Spacing.xxl));

  static const full = BorderRadius.all(Radius.circular(9999));
}
