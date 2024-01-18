import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/app_name_widget.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import '../../../../../core/constants/app_decoration.dart';

class AddPhoneScreen extends StatelessWidget {
  AddPhoneScreen({super.key});
  AppFonts appFonts = AppFonts();
  TextEditingController ctrlPhone = TextEditingController();
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
                          'What’s your mobile number?',
                          style: appFonts.t20W600,
                        )),
                    Text(
                      "Enter the mobile number where you can be contacted. No one will see this on your profile.",
                      style: appFonts.t17W400,
                    ),
                    SizedBox(
                      width: 396.w,
                      height: 68.h,
                      child: TextFormField(
                        controller: ctrlPhone,
                        style: AppFonts().t18W500,
                        keyboardType: TextInputType.phone,
                        decoration: AppDecoration()
                            .inputDecoration1
                            .copyWith(hintText: "Mobile number"),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      'You may receive SMS notifications from us for security and login purposes.',
                      style: appFonts.t14W400 ,
                    ),
                    AuthButton(
                      title: "Next",
                      func: () => Navigator.of(context).pushNamed(AppRoute.verificationRoute),
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign up with email',
                            style: appFonts.t16W400,
                          )),
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
