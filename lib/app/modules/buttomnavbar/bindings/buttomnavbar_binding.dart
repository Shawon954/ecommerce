import 'package:get/get.dart';

import '../controllers/buttomnavbar_controller.dart';

class ButtomnavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtomnavbarController>(
      () => ButtomnavbarController(),
    );
  }
}
