import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socalize_gaith_kozali/core/constants/app_string.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images_path.dart';

class AppNameWidget extends StatelessWidget {
  AppNameWidget({super.key, this.width = 380, this.height = 90});
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width.spMin,
        height: height.spMin,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  AppString.appName,
                  style: GoogleFonts.seymourOne(
                    color: AppColors.yellow,
                    fontSize: 34.spMin,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.37,
                  ),

                )),
            Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset(
                AppImagesPath.affect,
              ),
            )
          ],
        ));
  }
}
