import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ostad_ecommerce/app/custome_widget/backround_screen/screen.dart';

import '../../../custome_widget/app_bar/appbar.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackroundScreen(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          CustomAppBar(),
          Spacer(),
          Text('Home')
        ],

      ),
    );
  }
}
