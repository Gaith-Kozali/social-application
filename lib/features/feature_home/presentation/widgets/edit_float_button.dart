import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socalize_gaith_kozali/features/feature_create_post/presentation/screens/create_post_screen.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images_path.dart';

class EditFloatButton extends StatelessWidget {
  const EditFloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 90,
        right: 20,
        child: IconButton(
          icon: Container(
            width: 54.r,
            height: 54.r,
            decoration: const ShapeDecoration(
              gradient: LinearGradient(
                  colors: AppColors.bluePurple,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
              shape: OvalBorder(),
            ),
            child: Icon(Icons.edit, color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).popAndPushNamed(AppRoute.createPostRoute);
          },
        ));
  }
}
