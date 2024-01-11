import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import '../../../feature_splash/presentation/widgets/splash_button.dart';

class ChooseImageWidget extends StatelessWidget {
  const ChooseImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getScreenWidth(context),
        height: 600.h,
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(top: 50.h, bottom: 80.h),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ))),
            Text(
              'Add  picture',
              style: AppFonts().t20W400.copyWith(color: Colors.white),
            ),
            Padding(
                padding: EdgeInsets.only(top: 50.h, bottom: 16.h),
                child: SplashButton(
                  title: "Choose from Camera Roll",
                  func: () {},
                )),
            SplashButton(
              title: "Take Photo",
              func: () {},
            )
          ]),
        ));
  }
}
