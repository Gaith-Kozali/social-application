// welcome this codes is write by Gaith kozali

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/gallery/gallery_screen.dart';
import '../../../../../core/constants/app_images_path.dart';

class EditPictureWidget extends StatelessWidget {
  EditPictureWidget({super.key, required this.image});
  MemoryImage image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 60.h, top: 32.h),
      child: Center(
        child: Stack(
          children: [
            CircleAvatar(
                radius: 70.r, backgroundImage: MemoryImage(image.bytes)),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                child: SvgPicture.asset(AppImagesPath.cameraIcon,
                    height: 48.r, width: 48.r),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GalleryScreen(),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
