import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workly/design_system/label/label.dart';
import 'package:workly/design_system/widget/brand_text.dart';
import 'package:workly/route/route_name.dart';
import 'package:workly/src/feature/home/presentation/screen/add_employee_screen.dart';
import 'package:workly/src/feature/home/presentation/screen/home_screen.dart';
import 'package:workly/src/feature/splash/splash_screen.dart';

/// The route configuration.
final GoRouter routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.slpash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: RouteName.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),

    GoRoute(
      path: RouteName.error,
      builder: (BuildContext context, GoRouterState state) {
        return const Center(
          child: BrandText.primary(data: Strings.somethingWentWrong),
        );
      },
    ),
    GoRoute(
      path: RouteName.addEmployee,
      builder: (BuildContext context, GoRouterState state) {
        return AddEmployeeScreen(routeArgs: state.extra);
      },
    ),
  ],
);
