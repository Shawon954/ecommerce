import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/categorye_controller.dart';

class CategoryeView extends GetView<CategoryeController> {
  const CategoryeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CategoryeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CategoryeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
