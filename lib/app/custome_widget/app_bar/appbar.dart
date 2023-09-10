import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ostad_ecommerce/app/utility/app_image/app_image.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key});

  int _cartBadgeAmount = 3;
  late bool _showCartBadge;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    _showCartBadge = _cartBadgeAmount > 0;
    return Container(
      height: 55.h,
      width: double.infinity,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppImage.appbarimagesvg),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade400,
                  child: ClipRRect(
                    child: Image.asset(AppImage.appbarimagecall,
                        scale: 2.8, color: Colors.black45),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade400,
                  child: ClipRRect(
                    child: Image.asset(AppImage.appbarimageuser,
                        scale: 2.8, color: Colors.black45),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade400,
                  child: ClipRRect(
                    child:  badges.Badge(
                      position: badges.BadgePosition.topEnd(top: 10, end: 10),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.black45,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),

                SizedBox(
                  width: 3.w,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
