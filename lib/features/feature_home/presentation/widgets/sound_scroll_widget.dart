import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_images_path.dart';

class SoundScrollWidget extends StatelessWidget {
  const SoundScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
    child: SizedBox(
        height: 51,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.w),
              child: Container(
                width: 234.w,
                height: 51,
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.lightBlack, AppColors.blue],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(71).r,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        radius: 15.r,
                        backgroundImage: AssetImage("assets/profil.png")),
                    Text('shimaa  and 2 other', style: AppFonts().t12W600),
                    SvgPicture.asset(AppImagesPath.sound,
                        height: 24, width: 24.w),
                  ],
                ),
              )),
        )));
  }
}
