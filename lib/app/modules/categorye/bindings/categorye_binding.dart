import 'package:get/get.dart';

import '../controllers/categorye_controller.dart';

class CategoryeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryeController>(
      () => CategoryeController(),
    );
  }
}
