import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:ostad_ecommerce/app/utility/app_colors/app_colors.dart';
import 'package:ostad_ecommerce/app/utility/app_image/app_image.dart';
import 'package:ostad_ecommerce/app/utility/app_string/app_string.dart';
import 'package:ostad_ecommerce/app/utility/app_textstyle/app_style.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),()=>Get.offNamed(Routes.buttomnavbar));
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Spacer(),
            SvgPicture.asset(AppImage.Splashimage),
             Spacer(),
            CircularProgressIndicator(color: AppColors.CircleColors,),
            SizedBox(height: 15.h,),
            Text(AppString.Versiontext,style: AppTextStyle().TextSize14_400_black,),
            SizedBox(height: 20.h,),
          ],
        ),
      )
    );
  }
}
