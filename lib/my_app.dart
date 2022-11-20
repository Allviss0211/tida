import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app_dependecies.dart';
import 'routers/app_router.dart';

class TidaApp extends StatelessWidget {
  final AppRouter _appRouter = AppDependencies.injector.get<AppRouter>();

  TidaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Tida App',
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      themeMode: ThemeMode.light,
    );
  }
}
