import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ostad_ecommerce/app/custome_widget/backround_screen/screen.dart';

import '../controllers/wish_controller.dart';

class WishView extends GetView<WishController> {
  const WishView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BackroundScreen(child: Column(children: [],))
    );
  }
}
