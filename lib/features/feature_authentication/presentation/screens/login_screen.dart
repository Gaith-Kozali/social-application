import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_decoration.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/app_name_widget.dart';

import '../../../../core/constants/app_fonts.dart';
import '../../../feature_splash/presentation/widgets/splash_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrlPassword = TextEditingController();
    TextEditingController ctrlEmail = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: SizedBox(
          height: getScreenHeight(context),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 AppNameWidget(),
                Form(
                    child: Column(
                  children: [
                    SizedBox(
                      width: 396.w,
                      height: 68.h,
                      child: TextFormField(
                        controller: ctrlEmail,
                        decoration: AppDecoration().inputDecoration1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32.h),
                      child: SizedBox(
                        width: 396.w,
                        height: 68.h,
                        child: TextFormField(
                          controller: ctrlPassword,
                          decoration: AppDecoration().inputDecoration1.copyWith(
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.visibility),
                                onPressed: () {},
                              ),
                              hintText: "Password"),
                        ),
                      ),
                    ),
                    AuthButton(
                      title: "Log in",
                      func: () {},
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Forgot password?',
                      style: AppFonts().t16W400,
                    ),
                  ],
                )),
                SplashButton(
                  title: "Create new account",
                  func: () {},
                )
              ]),
        ),
      )),
    );
  }
}
