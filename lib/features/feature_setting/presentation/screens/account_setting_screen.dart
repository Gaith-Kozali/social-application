import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/setting.dart';

import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_images_path.dart';
import '../../../../core/functions/screen_informations.dart';
import '../widgets/logout_button.dart';
import '../widgets/setting_container_widget.dart';

class AccountSettingScreen extends StatelessWidget {
  AccountSettingScreen({super.key});

  late Settings accountSetting = Settings(title: [
    "Email",
    "Phone",
    "Username"
  ], leading: const [
    Icon(
      Icons.email_outlined,
      color: Color(0XFFA09BA3),
    ),
    Icon(
      Icons.phone_iphone_outlined,
      color: Color(0XFFA09BA3),
    ),
    Icon(
      Icons.account_circle_outlined,
      color: Color(0XFFA09BA3),
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getFullScreenHeight(context) * 0.9,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 30.h),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  const Spacer(),
                  Text(
                    'Account Settings',
                    textAlign: TextAlign.center,
                    style: AppFonts().t17W700,
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SettingContainerWidget(
                settings: accountSetting,
              ),
              const LogoutButton(),
            ],
          )),
    );
  }
}
