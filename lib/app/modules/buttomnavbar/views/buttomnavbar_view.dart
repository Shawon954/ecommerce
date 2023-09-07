import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ostad_ecommerce/app/utility/app_image/app_image.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../controllers/buttomnavbar_controller.dart';

class ButtomnavbarView extends GetView<ButtomnavbarController> {
  final ButtomnavbarController _buttomnavbarController =
      Get.put(ButtomnavbarController());

  ButtomnavbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return GetBuilder<ButtomnavbarController>(
        builder: (controller){

          return Scaffold(
            body: IndexedStack(
              index: controller.CurrentIndex,
              children: [

              ],
            ),
          );
        }


    );

  }

  Widget _BottomNavBar() {
    return WaterDropNavBar(
      selectedIndex: controller.CurrentIndex,
      onItemSelected: (int index) {
        controller.CurrentIndex = index;
      },
      barItems: <BarItem>[
        BarItem(
          Text: "Home",
          fillImage: Image.asset(AppImage.fillbottomnavbarhomeicon,scale: 1.2,),
          outlineImage: Image.asset(AppImage.outlinebottomnavbarhomeicon,scale: 1.2,),
        ),
        BarItem(
          Text: "Categorys",
          fillImage:Image.asset(AppImage.fillbottomnavbarcategoryicon,scale: 1.2,),
          outlineImage: Image.asset(AppImage.outlinebottomnavbarcategoryicon,scale: 1.2,),
        ),
        BarItem(
          Text: "Cart",
          fillImage: Image.asset(AppImage.fillbottomnavbarshoppingcarticon,scale: 1.2,),
          outlineImage: Image.asset(AppImage.outlinebottomnavbarshoppingcarticon,scale: 1.2,),
        ),
        BarItem(
          Text: "Wish",
          fillImage: Image.asset(AppImage.fillbottomnavbarhgiftboxicon,scale: 1.2,),
          outlineImage:Image.asset(AppImage.outlinebottomnavbarhgiftboxicon,scale: 1.2,),
        ),
      ],
    );
  }
}
