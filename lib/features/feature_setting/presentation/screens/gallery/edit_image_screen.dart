import 'dart:io';
import 'dart:math';
import 'package:custom_image_crop/custom_image_crop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/constants/app_images_path.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/edit_profile_screen.dart';

class EditImageScreen extends StatelessWidget {
  EditImageScreen({super.key, required this.image});
  File image;
  @override
  Widget build(BuildContext context) {
    CustomImageCropController controller = CustomImageCropController();
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Column(
        children: [
          // CircleAvatar(
          //   radius: 200.r,
          //   backgroundImage: FileImage(image),
          //   backgroundColor: AppColors.lightBlack,
          // ),
          Spacer(),
          CircleAvatar(
              radius: 200.r,
              child: Expanded(
                child: CustomImageCrop(
                  cropController: controller,
                  image: FileImage(image),
                  canRotate: false,
                  canScale: false,
                  cropPercentage: 1,
                  forceInsideCropArea: true,
                ),
              )),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Cancel',
                  style: AppFonts().t20W400,
                ),
              ),
              IconButton(
                  onPressed: () {
                    controller.addTransition(CropImageData(angle: -pi / 4));
                  },
                  icon: SvgPicture.asset(AppImagesPath.rotateLeftIcon)),
              IconButton(
                  onPressed: () {
                    controller.addTransition(CropImageData(scale: 1.33));
                  },
                  icon: const Icon(
                    Icons.zoom_in,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    controller.addTransition(CropImageData(scale: 0.75));
                  },
                  icon: const Icon(
                    Icons.zoom_out,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    controller.addTransition(CropImageData(angle: pi / 4));
                  },
                  icon: SvgPicture.asset(AppImagesPath.rotateRightIcon)),
              TextButton(
                  onPressed: () async {
                    MemoryImage? data = await controller.onCropImage();
                    File image2 = File.fromRawPath(data!.bytes);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfileScreen(),
                            settings: RouteSettings(
                                arguments: data)));
                    print(data);
                  },
                  child: Text(
                    'Done',
                    style: AppFonts().t20W400,
                  ))
            ],
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}
