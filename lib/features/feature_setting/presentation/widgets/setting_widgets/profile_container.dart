import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';

class ProfileContainer extends StatelessWidget {
   ProfileContainer({super.key,required this.func});
VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.lightBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12).r,
          ),
        ),
        child: ListTile(
            leading: CircleAvatar(radius: 21.r),
            title: Text(
              'donia omar',
              style: AppFonts().t17W600,
            ),
            subtitle: Text(
              '@dooniiaaomar',
              style: AppFonts().t12W400,
            ),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.white)),
      ),
    );
  }
}
