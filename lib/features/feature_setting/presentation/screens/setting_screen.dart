import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/constants/app_images_path.dart';
import 'package:socalize_gaith_kozali/core/constants/app_string.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/edit_profile/choose%20_photo_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/logout_button.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/profile_container.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_container_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/setting.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  List<Settings> containerSetting = [];

  settingInit() {
    containerSetting = [
      Settings(
        title: AppString.settingBoxNotification,
      ),
      Settings(title: AppString.settingBoxRoom),
      Settings(title: AppString.settingBoxColor),
      Settings(title: AppString.settingBoxWhatIsNew),
    ];
    // change the widget to switch in notification
    containerSetting[0].setActionAtIndex(
        0,
        Switch(
          value: true,
          onChanged: (value) {},
        ));
    // change all action icon
    containerSetting[3].setToAllAction(const Icon(
      Icons.call_made,
      color: Colors.white,
    ));
  }

  @override
  Widget build(BuildContext context) {
    settingInit();
    return SizedBox(
      height: getFullScreenHeight(context) * 0.9,
      child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: ListView.separated(
            itemCount: containerSetting.length,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(
              bottom: 82.h,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  if (index == 0)
                    Row(
                      children: [
                        const Spacer(),
                        Text('Setting', style: AppFonts().t17W700),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: SvgPicture.asset(
                              AppImagesPath.removeIcon,
                              height: 24.r,
                              width: 24.r,
                            ))
                      ],
                    ),
                  if (index == 0) const ProfileContainer(),
                  SizedBox(
                    height: 20.h,
                  ),
                  SettingContainerWidget(
                    settings: containerSetting[index],
                  ),
                  if (index == containerSetting.length - 1)
                    const LogoutButton(),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 32.h),
          )),
    );
  }
}
