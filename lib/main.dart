import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app_dependecies.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDependencies.initApp();
  runApp(EasyLocalization(
      path: 'assets/localizations',
      supportedLocales: const [Locale('vi')],
      startLocale: const Locale('vi'),
      fallbackLocale: const Locale('vi'),
      child: TidaApp()));
}
