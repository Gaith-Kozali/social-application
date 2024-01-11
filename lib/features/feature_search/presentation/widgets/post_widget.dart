import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/widgets/follow_button.dart';

import '../../../../core/constants/app_colors.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.w,
      height: 175,
      padding: EdgeInsets.symmetric(
        horizontal: 28.w,
      ).copyWith(top: 18, bottom: 14),
      decoration: ShapeDecoration(
        color: AppColors.lightBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12).r,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundImage: AssetImage("assets/profil.png"),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text.rich(
                TextSpan(
                    text: 'Donia omar \n',
                    style: AppFonts()
                        .t17W700
                        .copyWith(color: AppColors.lightYellow),
                    children: [
                      TextSpan(text: '@dooniiiaomar', style: AppFonts().t12W500)
                    ]),
              ),
              const Spacer(),
              const FollowButton(),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )),
            ],
          ),
          const Spacer(),
          SizedBox(
              width: 226.w,
              child: Text(
                'Welcome everyone ! Can you help me with a specific matter in Figma?',
                style: AppFonts().t12W400,
              )),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 19.r,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.messenger_outline_outlined,
                    color: AppColors.lightYellow,
                    size: 19.r,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.celebration,
                    color: AppColors.lightYellow,
                    size: 19.r,
                  )),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.ios_share,
                    color: AppColors.lightYellow,
                    size: 19.r,
                  )),
            ],
          ),
          Text(
            '11:18 AM . June 20, 2021',
            style: AppFonts().rubik14W400,
          ),
        ],
      ),
    );
  }
}
