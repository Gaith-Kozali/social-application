import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';

class CreatePostButton extends StatelessWidget {
  const CreatePostButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 30,
      child: ElevatedButton(
          style: ButtonStyle(
              padding:
                  const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
              backgroundColor:
                  const MaterialStatePropertyAll<Color>(AppColors.lightYellow),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5).r,
              ))),
          onPressed: () =>
              Navigator.pushNamed(context, AppRoute.createPostRoute),
          child: Center(
            child: Text(
              'Create Post',
              style: AppFonts().t12W500.copyWith(color: AppColors.blueButton),
            ),
          )),
    );
  }
}
