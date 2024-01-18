import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(flex: 2),
          Column(
            children: [
              Text(
                'Gaith kozali',
                style: AppFonts().t20W600,
              ),
              SizedBox(
                height: 11.h,
              ),
              Text(
                'Flutter and .net in soon',
                style: AppFonts().t16W500,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: AppColors.lightYellow,
              ))
        ],
      ),
      SizedBox(
        height: 20.h,
      ),
      Row(
        children: [
          const Spacer(flex: 2),
          Text(
            'Followers',
            textAlign: TextAlign.center,
            style: AppFonts().t14W500,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            '(128)',
            style: AppFonts().t14W500.copyWith(color: AppColors.lightYellow),
          ),
          const Spacer(),
          Text(
            'Connects',
            style: AppFonts().t14W500,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            '(48)',
            style: AppFonts().t14W500.copyWith(color: AppColors.lightYellow),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      )
    ]);
  }
}
