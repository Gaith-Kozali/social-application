import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../feature_create_post/presentation/widgets/post_button.dart';

class PostGalleryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PostGalleryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.backGround,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Text(
          'New Post',
          textAlign: TextAlign.center,
          style: AppFonts().t20W600,
        ),
        actions: [
          PostButton(),
          SizedBox(
            width: 15.w,
          )
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
