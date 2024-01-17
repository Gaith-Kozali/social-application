import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/features/feature_create_post/presentation/widgets/post_button.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_fonts.dart';
import '../../../../../route/app_route.dart';

class CreatePostAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CreatePostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.backGround,
        leading: IconButton(
          onPressed: () =>
              Navigator.of(context).pushReplacementNamed(AppRoute.homeRoute),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Create Post',
          style: AppFonts().t20W600,
        ),
        actions: [
          const PostButton(),
          SizedBox(
            width: 15.w,
          )
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
