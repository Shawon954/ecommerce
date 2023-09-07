import 'package:get/get.dart';

class ButtomnavbarController extends GetxController {

  var  CurrentIndex = 0;

  void TabChange(int index){

    CurrentIndex= index ;
    update();

  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
