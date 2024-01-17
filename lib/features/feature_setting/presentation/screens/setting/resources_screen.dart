import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_string.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_widgets/profile_with_setting_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_widgets/setting_container_title_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/setting.dart';
import '../../../../../core/functions/screen_informations.dart';
import '../../widgets/setting_widgets/custom_setting_appbar.dart';

class ResourcesScreen extends StatelessWidget {
  ResourcesScreen({super.key});
  late List<Settings> settingInfo;
  void initSettingInfo() {
    settingInfo = [
      Settings(
          title: AppString.settingBoxPreference,
          leading: const [
            Icon(Icons.notifications_active_outlined, color: Colors.white),
            Icon(
              Icons.color_lens_outlined,
              color: Colors.white,
            )
          ],
          containerTitle: "Preferences"),
      Settings(
          title: AppString.settingBoxResource,
          leading: const [
            Icon(
              Icons.contact_support_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.star_rate_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.facebook_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.source_outlined,
              color: Colors.white,
            ),
          ],
          containerTitle: "Resources")
    ];
  }

  @override
  Widget build(BuildContext context) {
    initSettingInfo();
    return SizedBox(
      height: getFullScreenHeight(context) * 0.9,
      child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: ListView.separated(
            itemCount: settingInfo.length,
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
                        padding: EdgeInsets.only(top: 42.h, bottom: 32.h),
                        child: ProfileWithSettingWidget()),
                  SettingContainerTitleWidget(
                    settings: settingInfo[index],
                    containerTitle: settingInfo[index].containerTitle ?? "",
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 32.h),
          )),
    );
  }
}
