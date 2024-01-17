import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/app_fonts.dart';
import '../../../../../core/constants/app_images_path.dart';

class CustomSettingAppbar extends StatelessWidget {
  const CustomSettingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
