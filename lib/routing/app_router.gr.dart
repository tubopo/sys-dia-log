// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    MeasurementRoute.name: (routeData) {
      final args = routeData.argsAs<MeasurementRouteArgs>(
          orElse: () => const MeasurementRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MeasurementView(
          key: args.key,
          onAddNewMeasurement: args.onAddNewMeasurement,
        ),
      );
    },
    NavBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NavBarView(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsView(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreenView(),
      );
    },
  };
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MeasurementView]
class MeasurementRoute extends PageRouteInfo<MeasurementRouteArgs> {
  MeasurementRoute({
    Key? key,
    void Function(Measurement)? onAddNewMeasurement,
    List<PageRouteInfo>? children,
  }) : super(
          MeasurementRoute.name,
          args: MeasurementRouteArgs(
            key: key,
            onAddNewMeasurement: onAddNewMeasurement,
          ),
          initialChildren: children,
        );

  static const String name = 'MeasurementRoute';

  static const PageInfo<MeasurementRouteArgs> page =
      PageInfo<MeasurementRouteArgs>(name);
}

class MeasurementRouteArgs {
  const MeasurementRouteArgs({
    this.key,
    this.onAddNewMeasurement,
  });

  final Key? key;

  final void Function(Measurement)? onAddNewMeasurement;

  @override
  String toString() {
    return 'MeasurementRouteArgs{key: $key, onAddNewMeasurement: $onAddNewMeasurement}';
  }
}

/// generated route for
/// [NavBarView]
class NavBarRoute extends PageRouteInfo<void> {
  const NavBarRoute({List<PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsView]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreenView]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute({List<PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
