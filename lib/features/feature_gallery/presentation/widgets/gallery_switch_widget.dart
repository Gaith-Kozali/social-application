import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';

class GallerySwitchWidget extends StatelessWidget {
  const GallerySwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Cancel',
            style: AppFonts()
                .t20W400
                .copyWith(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 43.w,
        ),
        Container(
          width: 190.w,
          height: 40,
          decoration: ShapeDecoration(
            color: Color(0xFF333342),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10).r,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                height: 30,
                decoration: ShapeDecoration(
                  color: AppColors.backGround,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10).r,
                  ),
                ),
                child: Text(
                  'Photo',
                  style: AppFonts().t20W400.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child:
                Text('Albums', style: AppFonts().t20W400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
