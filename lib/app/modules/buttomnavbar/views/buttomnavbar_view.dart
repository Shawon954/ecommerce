import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../controllers/buttomnavbar_controller.dart';

class ButtomnavbarView extends GetView<ButtomnavbarController> {
  final ButtomnavbarController _buttomnavbarController = Get.put(
      ButtomnavbarController());

  ButtomnavbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: _BottomNavBar(),
      body: const Center(
        child: Text(
          'ButtomnavbarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
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
          filledIcon: Icons.bookmark_rounded,
          outlinedIcon: Icons.bookmark_border_rounded,
          Text: "",
        ),
        BarItem(
            filledIcon: Icons.favorite_rounded,
            outlinedIcon: Icons.favorite_border_rounded,
          Text: "",
        ),

        BarItem(
          filledIcon: Icons.email_rounded,
          outlinedIcon: Icons.email_outlined,
          Text: "",
        ),
        BarItem(
          filledIcon: Icons.folder_rounded,
          outlinedIcon: Icons.folder_outlined,
          Text: "",
        ),
      ], );
  }
}