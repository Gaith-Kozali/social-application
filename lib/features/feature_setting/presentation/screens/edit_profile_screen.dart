import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_decoration.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/edit_profile/custom_edit_appbar.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/edit_profile/edit_picture_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/edit_profile/social_handles_widget.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/functions/screen_informations.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  AppDecoration appDecoration = AppDecoration();
  @override
  Widget build(BuildContext context) {
    MemoryImage image = ModalRoute.of(context)!.settings.arguments as MemoryImage;
    return Scaffold(
      body: SizedBox(
          height: getFullScreenHeight(context) * 0.9,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 30.h),
            child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 30.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomEditAppBar(),
                      EditPictureWidget(image: image!),
                      Text(
                        'Profile',
                        style: AppFonts()
                            .t14W400
                            .copyWith(color: Color(0xFFA09BA3)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: AppFonts().t20W600,
                          ),
                          SizedBox(
                            width: 205.w,
                            height: 40,
                            child: TextFormField(
                                decoration:
                                    appDecoration.inputDecorationEditPage),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        'Bio',
                        style: AppFonts()
                            .t14W400
                            .copyWith(color: Color(0xFFA09BA3)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 32.h),
                          child: SizedBox(
                            width: 396.w,
                            child: TextFormField(
                                decoration:
                                    appDecoration.inputDecorationEditPage,
                                maxLines: 2),
                          )),
                      Text(
                        'Social Handles',
                        style: AppFonts()
                            .t14W400
                            .copyWith(color: Color(0xFFA09BA3)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SocialHandlesWidget()
                    ])),
          )),
    );
  }
}
