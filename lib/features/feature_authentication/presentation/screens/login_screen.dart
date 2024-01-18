import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_decoration.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/screens/search_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/app_name_widget.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';

import '../../../../core/constants/app_fonts.dart';
import '../../../feature_splash/presentation/widgets/splash_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrlPassword = TextEditingController();
    TextEditingController ctrlEmail = TextEditingController();
    bool obscureText = true;

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
                        style: AppFonts().t18W500,
                        decoration: AppDecoration().inputDecoration1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32.h),
                      child: StatefulBuilder(
                        builder: (context, setState) => SizedBox(
                          width: 396.w,
                          height: 68.h,
                          child: TextFormField(
                            obscureText: obscureText,
                            controller: ctrlPassword,
                            style: AppFonts().t18W500,
                            decoration:
                                AppDecoration().inputDecoration1.copyWith(
                                    suffixIcon: IconButton(
                                      icon: Icon(obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                      onPressed: () {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      },
                                    ),
                                    hintText: "Password"),
                          ),
                        ),
                      ),
                    ),
                    AuthButton(
                      title: "Log in",
                      func: () =>
                          Navigator.of(context).pushNamed(AppRoute.searchRoute),
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
                  func: () =>
                      Navigator.of(context).pushNamed(AppRoute.addEmailRoute),
                )
              ]),
        ),
      )),
    );
  }
}
