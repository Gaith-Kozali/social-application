import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_widgets/setting_container_widget.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_fonts.dart';
import '../../../setting.dart';

class SettingContainerTitleWidget extends StatelessWidget {
  SettingContainerTitleWidget(
      {super.key, required this.containerTitle, required this.settings});
  String containerTitle;
  Settings settings;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          color: AppColors.lightBlack,
          borderRadius: BorderRadius.circular(12).r),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Text(
              containerTitle,
              style: AppFonts().t14W400,
            )),
        SettingContainerWidget(settings: settings)
      ]),
    );
  }
}
