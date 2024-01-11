import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82.w,
      height: 17,
      child: ElevatedButton(
          style: ButtonStyle(
              padding:
                  const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
              backgroundColor:
                  const MaterialStatePropertyAll<Color>(AppColors.silver),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9).r,
              ))),
          onPressed: () {},
          child: Text(
            'following you',
            style: AppFonts().t10W500,
          )),
    );
  }
}
