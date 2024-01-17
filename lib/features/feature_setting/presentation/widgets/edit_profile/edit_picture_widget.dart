// welcome this project is coded by Gaith kozali start in 2023/1/1

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/controllers/edit_profile_controller/edit_profile_cubit.dart';
import '../../../../../core/constants/app_images_path.dart';

class EditPictureWidget extends StatelessWidget {
  EditPictureWidget({super.key, this.image});
  File? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 60.h, top: 32.h),
      child: Center(
        child: Stack(
          children: [
            CircleAvatar(radius: 70.r, backgroundImage: FileImage(image!)),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                child: SvgPicture.asset(AppImagesPath.cameraIcon,
                    height: 48.r, width: 48.r),
                onTap: () {
                  BlocProvider.of<EditProfileCubit>(context)
                      .showTypeChoosePhoto();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
