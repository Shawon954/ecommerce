import 'package:get/get.dart';

import '../modules/buttomnavbar/bindings/buttomnavbar_binding.dart';
import '../modules/buttomnavbar/views/buttomnavbar_view.dart';
import '../modules/categorye/bindings/categorye_binding.dart';
import '../modules/categorye/views/categorye_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
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
      page: () => ButtomnavbarView(),
      binding: ButtomnavbarBinding(),
    ),
    GetPage(
      name: _Paths.homepage,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.categorye,
      page: () => const CategoryeView(),
      binding: CategoryeBinding(),
    ),
  ];
}
