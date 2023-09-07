import 'package:get/get.dart';

import '../modules/buttomnavbar/bindings/buttomnavbar_binding.dart';
import '../modules/buttomnavbar/views/buttomnavbar_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.splashscreen;

  static final routes = [
    GetPage(
      name: _Paths.splashscreen,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.buttomnavbar,
      page: () =>  ButtomnavbarView(),
      binding: ButtomnavbarBinding(),
    ),
  ];
}
