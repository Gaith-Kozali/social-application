import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/app_name_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/splash_button.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';

import '../../../../../core/constants/app_decoration.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});
  AppFonts appFonts = AppFonts();
  TextEditingController ctrlCode = TextEditingController();
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
                          'Enter the confirmation code',
                          style: appFonts.t20W600,
                        )),
                    Text(
                      "To confirm your account, enter the 6-digit code we sent to *****@gmail.com",
                      style: appFonts.t17W400,
                    ),
                    SizedBox(
                      width: 396.w,
                      height: 68.h,
                      child: TextFormField(
                        controller: ctrlCode,
                        keyboardType: TextInputType.phone,
                        style: AppFonts().t18W500,
                        decoration: AppDecoration()
                            .inputDecoration1
                            .copyWith(hintText: "confirmation code"),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    AuthButton(
                      title: "Next",
                      func: () => Navigator.of(context).pushNamed(
                        AppRoute.addProfileRoute,
                      ),
                    ),
                    SplashButton(
                      title: "I didn’t get the code",
                      func: () {},
                    ),
                    SizedBox(
                      height: height / 6,
                    ),
                  ]),
            ),
          )),
    );
  }
}
