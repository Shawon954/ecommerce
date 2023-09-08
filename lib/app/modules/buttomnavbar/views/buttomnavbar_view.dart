import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ostad_ecommerce/app/utility/app_image/app_image.dart';
import 'package:ostad_ecommerce/app/utility/app_string/app_string.dart';
import 'package:ostad_ecommerce/app/utility/app_textstyle/app_style.dart';


import '../controllers/buttomnavbar_controller.dart';

class ButtomnavbarView extends GetView<ButtomnavbarController> {
  final ButtomnavbarController _buttomnavbarController =
      Get.put(ButtomnavbarController());

  ButtomnavbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtomnavbarController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: controller.CurrentIndex,
          backgroundColor: Colors.grey.shade400,
          onTap: controller.TabChange,
          unselectedFontSize: 15,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 15,
          selectedLabelStyle: AppTextStyle().TextSize14_400_ambar,
          selectedItemColor: Colors.orange,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,

              icon: ImageIcon(AssetImage(AppImage.outlinebottomnavbarhomeicon,),size: 30,
                ),
              label: 'Home',
            ),BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: ImageIcon(AssetImage(AppImage.outlinebottomnavbarcategoryicon),size: 30
               ),
              label: 'Categorye',
            ),BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: ImageIcon(AssetImage(AppImage.outlinebottomnavbarshoppingcarticon),size: 30
                ),
              label: 'Cart',
            ),BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: ImageIcon(AssetImage(AppImage.outlinebottomnavbarhgiftboxicon),size: 30
              ),
              label: 'Wish',

            ),
          ],
        ),
        body: IndexedStack(
          index: controller.CurrentIndex,
          children: [],
        ),
      );
    });
  }


}
