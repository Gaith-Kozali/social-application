import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/widgets/post_widget.dart';

import '../../../../../core/constants/app_colors.dart';

class SeeAllPostWidget extends StatelessWidget {
  const SeeAllPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Posts",
        style: AppFonts().t20W400,
      ),
      Container(
          decoration: BoxDecoration(
              color: AppColors.lightBlack,
              borderRadius: BorderRadius.circular(12).r),
          child: Column(
            children: [
              PostWidget(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: AppFonts().t12W600,
                  )),
            ],
          ))
    ]);
  }
}
