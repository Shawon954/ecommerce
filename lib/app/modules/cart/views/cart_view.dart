import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../custome_widget/backround_screen/screen.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BackroundScreen(child: Column(children: [],))
    );
  }
}
