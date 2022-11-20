import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/pages.dart';
import 'route_key.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: RouteKey.home, page: HomePage),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter() : super();
}
