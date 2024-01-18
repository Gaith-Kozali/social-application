import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/app_name_widget.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';

import '../../../../../core/constants/app_decoration.dart';

// welcome this project is coded by Gaith kozali start in 2023/1/1
class ReEnterScreen extends StatelessWidget {
  ReEnterScreen({super.key});
  AppFonts appFonts = AppFonts();
  TextEditingController ctrlReEnterPassword = TextEditingController();
  bool obscureText = true;
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
                          'Create a password',
                          style: appFonts.t20W600,
                        )),
                    Text(
                      'Create a password with at least 6 letters or numbers. '
                      'It should be something other can’t guess.',
                      style: appFonts.t17W400,
                    ),
                    StatefulBuilder(
                      builder: (context, setState) => SizedBox(
                        width: 396.w,
                        height: 68.h,
                        child: TextFormField(
                          obscureText: obscureText,
                          controller: ctrlReEnterPassword,
                          style: AppFonts().t18W500,
                          decoration: AppDecoration().inputDecoration1.copyWith(
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
                              hintText: "Re enter password"),
                        ),
                      ),
                    ),
                    AuthButton(
                      title: "Next",
                      func: () =>
                          Navigator.of(context).pushNamed(AppRoute.addBirthRoute),
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
