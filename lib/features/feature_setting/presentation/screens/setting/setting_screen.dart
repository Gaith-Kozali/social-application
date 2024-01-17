import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_string.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting/color_scheme_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting/resources_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_widgets/custom_setting_appbar.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_widgets/logout_button.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_widgets/profile_container.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_widgets/setting_container_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/setting.dart';
import '../../../../../core/constants/app_colors.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  List<Settings> containerSetting = [];

  settingInit(BuildContext context) {
    containerSetting = [
      Settings(
        title: AppString.settingBoxNotification,
      ),
      Settings(title: AppString.settingBoxRoom),
      Settings(
        title: AppString.settingBoxColor,
      ),
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
    // to set only one function you should use this function
    // but if you want to set to all make it normal in constructor
    containerSetting[2].setFuncAtIndex(0, () {
      showModalBottomSheet(
        backgroundColor: AppColors.backGround,
        isScrollControlled: true,
        isDismissible: true,
        useSafeArea: true,
        context: context,
        builder: (context) => ColorSchemeScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    settingInit(context);
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
                  if (index == 0) const CustomSettingAppbar(),
                  if (index == 0)
                    Padding(
                        padding: EdgeInsets.only(bottom: 32.h, top: 42.h),
                        child: ProfileContainer(
                            func: () => showModalBottomSheet(
                                  backgroundColor: AppColors.backGround,
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  useSafeArea: true,
                                  context: context,
                                  builder: (context) => ResourcesScreen(),
                                ))),
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
