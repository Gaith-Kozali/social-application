import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 40.h),child: InkWell(
      child: Container(
        width: 396.w,
        height: 58,
        decoration: ShapeDecoration(
          color: AppColors.lightBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12).r,
          ),
        ),
        child: Center(
            child: Text(
              "Logout",
              style: AppFonts().t20W400.copyWith(color: AppColors.red),
            )),
      ),
      onTap: () {},
    ),);
  }
}
