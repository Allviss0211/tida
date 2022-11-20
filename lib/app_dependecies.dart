import 'package:get_it/get_it.dart';
import 'package:tida/routers/app_router.dart';

class AppDependencies {
  static GetIt get injector => GetIt.I;

  static Future<bool> initApp() async {
    injector.registerFactory<AppRouter>(() => AppRouter());

    return true;
  }
}
