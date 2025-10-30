// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:ultimate_client/screens/lobby/lobby_screen.dart' as _i1;
import 'package:ultimate_client/screens/login/login_screen.dart' as _i2;

/// generated route for
/// [_i1.LobbyScreen]
class LobbyRoute extends _i3.PageRouteInfo<void> {
  const LobbyRoute({List<_i3.PageRouteInfo>? children})
    : super(LobbyRoute.name, initialChildren: children);

  static const String name = 'LobbyRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.LobbyScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute({List<_i3.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}
