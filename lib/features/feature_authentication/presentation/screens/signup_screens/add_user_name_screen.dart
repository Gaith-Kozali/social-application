import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/app_name_widget.dart';

import '../../../../../core/constants/app_decoration.dart';

class AddUserNameScreen extends StatelessWidget {
  AddUserNameScreen({super.key});
  AppFonts appFonts = AppFonts();
  TextEditingController ctrlUserName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = getScreenHeight(context);

    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Center(
            child: SizedBox(
              height: getScreenHeight(context),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height / 8,
                    ),
                     AppNameWidget(),
                    Padding(
                        padding: EdgeInsets.only(
                          top: 32.h,
                        ),
                        child: Text(
                          'add your name',
                          style: appFonts.t20W600,
                        )),
                    Text(
                      "Add a username or use our suggestion. You can change this at any time.",
                      style: appFonts.t17W400,
                    ),
                    SizedBox(
                      width: 396.w,
                      height: 68.h,
                      child: TextFormField(
                        controller: ctrlUserName,
                        decoration: AppDecoration().inputDecoration1.copyWith(
                            hintText: "user name"),
                      ),
                    ),
                    AuthButton(
                      title: "Next",
                      func: () {},
                    ),
                    SizedBox(
                      height: height / 3,
                    ),
                  ]),
            ),
          )),
    );
  }
}
