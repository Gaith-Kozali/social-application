import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_string.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
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
      height: getFullScreenHeight(context) * 0.90,
      child: Padding(
          padding: EdgeInsets.only(top: 42.h),
          child: ListView.separated(
            itemCount: containerSetting.length,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(
              bottom: 82.h,
            ),
            itemBuilder: (context, index) => SettingContainerWidget(
              settings: containerSetting[index],
            ),
            separatorBuilder: (context, index) => SizedBox(height: 32.h),
          )),
    );
  }
}
