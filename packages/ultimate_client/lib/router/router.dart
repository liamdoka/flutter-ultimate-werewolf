import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ultimate_client/router/router.gr.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
Raw<AppRouter> appRouter(Ref ref) => AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType =>
      RouteType.custom(transitionsBuilder: TransitionsBuilders.fadeIn);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: LobbyRoute.page),
  ];
}
