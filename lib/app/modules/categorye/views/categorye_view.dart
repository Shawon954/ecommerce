import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../custome_widget/backround_screen/screen.dart';
import '../controllers/categorye_controller.dart';

class CategoryeView extends GetView<CategoryeController> {
  const CategoryeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BackroundScreen(child: Column(children: [],))
    );
  }
}
