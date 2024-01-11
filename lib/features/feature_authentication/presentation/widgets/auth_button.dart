import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';

class AuthButton extends StatelessWidget {
  AuthButton(
      {super.key,
      required this.title,
      required this.func,
      this.buttonColor = AppColors.lightYellow});
  VoidCallback func;
  String title;
  Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 396.w,
      height: 46.h,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5).r,
            ))),
        onPressed: func,
        child:  Text(
          title,
          style: GoogleFonts.archivo(
            color: AppColors.blue,
            fontSize: 20.spMin,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.38,
          ),
        ),
      ),
    );
  }
}
