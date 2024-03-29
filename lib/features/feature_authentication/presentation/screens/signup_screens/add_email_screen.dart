import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/app_name_widget.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import '../../../../../core/constants/app_decoration.dart';

class AddEmailScreen extends StatelessWidget {
  AddEmailScreen({super.key});
  AppFonts appFonts = AppFonts();
  TextEditingController ctrlEmail = TextEditingController();
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
                          'What’s your email account like gmail or yahoo ...',
                          style: appFonts.t20W600,
                        )),
                    Text(
                      'Add your email',
                      style: appFonts.t17W400,
                    ),
                    SizedBox(
                      width: 396.w,
                      height: 68.h,
                      child: TextFormField(
                        controller: ctrlEmail,
                        decoration: AppDecoration().inputDecoration1,
                        style: AppFonts().t18W500,
                      ),
                    ),
                    AuthButton(
                      title: "Next",
                      func: () => Navigator.of(context)
                          .pushNamed(AppRoute.createPasswordRoute),
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
