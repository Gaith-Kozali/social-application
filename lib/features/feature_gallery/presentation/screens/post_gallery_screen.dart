import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/features/feature_gallery/presentation/widgets/post_gallery_appbar.dart';

import '../../../../core/constants/app_colors.dart';

class PostGalleyScreen extends StatelessWidget {
  const PostGalleyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PostGalleryAppBar(),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(children: [
            SizedBox(
              width: 135.w,
              height: 28,
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8).r,
                      )),
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.zero),
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                          AppColors.lightBlue)),
                  onPressed: () {},
                  icon: const Icon(Icons.photo_outlined,
                      color: AppColors.blueButton),
                  label: Text(
                    'Select Multiple',
                    style: AppFonts()
                        .t12W500
                        .copyWith(color: AppColors.blueButton),
                  )),
            )
          ])),
    );
  }
}
