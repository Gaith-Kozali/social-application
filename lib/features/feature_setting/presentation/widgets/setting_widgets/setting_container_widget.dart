import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/setting.dart';
import '../../../../../core/constants/app_fonts.dart';

class SettingContainerWidget extends StatelessWidget {
  SettingContainerWidget({super.key, required this.settings});
  Settings settings;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      decoration: ShapeDecoration(
        color: AppColors.lightBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12).r,
        ),
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: settings.title.length,
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.white),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: GestureDetector(
              onTap: settings.func[index],
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                settings.leading.isNotEmpty
                    ? Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: settings.leading[index],
                      )
                    : const SizedBox(),
                Text(
                  settings.title[index],
                  style: AppFonts().t20W400.copyWith(color: Colors.white),
                ),
                const Spacer(),
                settings.action[index]
              ]),
            ),
          );
        },
      ),
    );
  }
}
