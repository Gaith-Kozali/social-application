import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_fonts.dart';

class ColorSchemeWidget extends StatelessWidget {
  ColorSchemeWidget(
      {super.key,
      required this.icon,
      required this.color,
      required this.func,
      required this.title});
  Color color;
  Widget icon;
  VoidCallback func;
  String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        width: getRealWidth(context) * 0.28,
        height: 96,
        padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 16),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 3.r, color: color),
            borderRadius: BorderRadius.circular(12).r,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              Text(title, style: AppFonts().t17W700.copyWith(color: color)),
            ]),
      ),
    );
  }
}
