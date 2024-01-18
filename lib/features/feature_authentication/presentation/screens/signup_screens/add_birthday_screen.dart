import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/app_name_widget.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import '../../../../../core/constants/app_decoration.dart';

class AddBirthDayScreen extends StatelessWidget {
  AddBirthDayScreen({super.key});
  AppFonts appFonts = AppFonts();
  TextEditingController ctrlReEnterPassword = TextEditingController();
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
                          'What’s your birthday?',
                          style: appFonts.t20W600,
                        )),
                    Text(
                      "Use Your own birthday, even if this account is for a business, a pet or something else. No one will see this unless you choose to share it. why do i need to provide my birthday?",
                      style: appFonts.t17W400,
                    ),
                    SizedBox(
                      width: 396.w,
                      height: 68.h,
                      child: TextFormField(
                        controller: ctrlReEnterPassword,
                        keyboardType: TextInputType.datetime,
                        style: AppFonts().t18W500,
                        decoration: AppDecoration()
                            .inputDecoration1
                            .copyWith(hintText: "Birthday"),
                      ),
                    ),
                    AuthButton(
                      title: "Next",
                      func: () =>Navigator.of(context).pushNamed(AppRoute.addUserNameRoute),
                    ),
                    SizedBox(
                      height: height / 4,
                    ),
                  ]),
            ),
          )),
    );
  }
}
// welcome this project is coded by Gaith kozali start in 2023/1/1