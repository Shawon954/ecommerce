import 'package:flutter/material.dart';
import 'package:ostad_ecommerce/app/utility/app_colors/app_colors.dart';

class BackroundScreen extends StatelessWidget {


  final child;


   BackroundScreen({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.ScreenbackroundColors,
        extendBody: true,
        body: child,

    );
  }
}
