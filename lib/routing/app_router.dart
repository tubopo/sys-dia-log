import 'package:auto_route/auto_route.dart';
import 'package:sys_dia_log/modules/home/views/home_view.dart';
import 'package:sys_dia_log/modules/measurement/views/measurement_view.dart';
import 'package:sys_dia_log/modules/settings/views/settings_view.dart';
import 'package:sys_dia_log/shared/views/nav_bar_view.dart';
import 'package:sys_dia_log/shared/views/splash_screen_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashScreenRoute.page, initial: true),
        CustomRoute(page: NavBarRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: MeasurementRoute.page),
          AutoRoute(page: SettingsRoute.page)
        ]),
      ];
}
