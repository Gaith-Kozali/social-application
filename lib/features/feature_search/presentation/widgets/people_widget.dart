import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import 'connect_button.dart';

class PeopleWidget extends StatelessWidget {
  const PeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.w,
      height: 104,
      padding: EdgeInsets.only(right: 16.w, left: 5.w),
      decoration: BoxDecoration(
          color: AppColors.lightBlack,
          borderRadius: BorderRadius.circular(12).r),
      child: Row(children: [
        CircleAvatar(
          radius: 50.r,
          backgroundImage: AssetImage("assets/profil.png"),
        ),
        SizedBox(
          width: 16.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Donia Omar',
              textAlign: TextAlign.center,
              style: AppFonts().t17W700,
            ),
            Text(
              'Ui ux designer',
              style: AppFonts().t15W600,
            ),
            Row(
              children: [
                const Icon(Icons.public,
                    color: AppColors.lightYellow, size: 15),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '4 mutual connections',
                  style: AppFonts().t14W400,
                )
              ],
            ),
          ],
        ),
        const Spacer(),
        ConnectButton()
      ]),
    );
  }
}
