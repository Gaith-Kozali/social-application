import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socalize_gaith_kozali/core/constants/app_decoration.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import '../../../../../core/constants/app_fonts.dart';
import '../../../../../core/constants/app_images_path.dart';

class SocialHandlesWidget extends StatelessWidget {
  SocialHandlesWidget({super.key});
  AppDecoration appDecoration = AppDecoration();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context) * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.twitterIcon),
              const Spacer(
                flex: 1,
              ),
              Text(
                'Twitter',
                style: AppFonts().t20W600,
              ),
              const Spacer(
                flex: 5,
              ),
              SizedBox(
                width: 205.w,
                height: 40,
                child: TextFormField(
                    style: AppFonts().t18W500,
                    decoration: appDecoration.inputDecorationEditPage),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.linkedInIcon),
              const Spacer(
                flex: 1,
              ),
              Text(
                'Linkedin',
                style: AppFonts().t20W600,
              ),
              const Spacer(
                flex: 5,
              ),
              SizedBox(
                width: 205.w,
                height: 40,
                child: TextFormField(
                    style: AppFonts().t18W500,
                    decoration: appDecoration.inputDecorationEditPage),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.facebookIcon),
              const Spacer(
                flex: 1,
              ),
              Text(
                'Facebook',
                style: AppFonts().t20W600,
              ),
              const Spacer(
                flex: 5,
              ),
              SizedBox(
                width: 205.w,
                height: 40,
                child: TextFormField(
                    style: AppFonts().t18W500,
                    decoration: appDecoration.inputDecorationEditPage),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.tiktokIcon),
              const Spacer(
                flex: 1,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'TikTok',
                style: AppFonts().t20W600,
              ),
              const Spacer(
                flex: 5,
              ),
              SizedBox(
                width: 205.w,
                height: 40,
                child: TextFormField(
                    style: AppFonts().t18W500,
                    decoration: appDecoration.inputDecorationEditPage),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.youtubeIcon),
              const Spacer(
                flex: 1,
              ),
              Text(
                'YouTube',
                style: AppFonts().t20W600,
              ),
              const Spacer(
                flex: 5,
              ),
              SizedBox(
                width: 205.w,
                height: 40,
                child: TextFormField(
                    style: AppFonts().t18W500,
                    decoration: appDecoration.inputDecorationEditPage),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.websiteIcon),
              const Spacer(
                flex: 1,
              ),
              Text(
                'Website',
                style: AppFonts().t20W600,
              ),
              const Spacer(flex: 5),
              SizedBox(
                width: 205.w,
                height: 40,
                child: TextFormField(
                    style: AppFonts().t18W500,
                    decoration: appDecoration.inputDecorationEditPage),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// welcome this project is coded by Gaith kozali start in 2023/1/1
