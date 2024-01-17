import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_images_path.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_widgets/color_scheme_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/edit_profile/custom_edit_appbar.dart';
import '../../../../../core/functions/screen_informations.dart';

class ColorSchemeScreen extends StatelessWidget {
  const ColorSchemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: getFullScreenHeight(context) * 0.9,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 30.h),
              child: Column(children: [
                CustomEditAppBar(title: "Color Scheme"),
                SizedBox(
                  height: 95.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColorSchemeWidget(
                      icon: const Icon(Icons.dark_mode,
                          color: AppColors.lightBlack),
                      color: AppColors.lightBlack,
                      title: "Dark",
                      func: () {},
                    ),
                    ColorSchemeWidget(
                      icon: const Icon(Icons.light_mode_outlined,
                          color: Colors.white),
                      color: Colors.white,
                      title: "Light",
                      func: () {},
                    ),
                    ColorSchemeWidget(
                      icon: SvgPicture.asset(
                        AppImagesPath.systemModeIcon,
                        colorFilter: const ColorFilter.mode(
                            AppColors.lightYellow, BlendMode.srcIn),
                      ),
                      color: AppColors.lightYellow,
                      title: "System",
                      func: () {},
                    )
                  ],
                )
              ]),
            )));
  }
}
