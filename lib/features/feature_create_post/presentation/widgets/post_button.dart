import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';

class PostButton extends StatelessWidget {
  const PostButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.w,
      height: 25,
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
          onPressed: () {},
          child: Center(
            child: Text(
              'Post',
              style: AppFonts().t12W500.copyWith(color: Colors.black),
            ),
          )),
    );
  }
}
