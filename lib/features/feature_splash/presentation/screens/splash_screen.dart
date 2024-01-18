import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif/gif.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import '../widgets/app_name_widget.dart';
import '../widgets/splash_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: SizedBox(
          height: getScreenHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Gif(
                  image: const NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/96dd/db99/2f35ad7a0834a5182b5cae92c3db8351?Expires=1705276800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RhQ3ZckBvfGZPElVgij9cqe7xwJYPK3VvceE9w4LFag~xPLCZl511-liHRxBtZgLsDrwS5rOleM1TgfuMuSGkpQ98AP4rQNGFt4ch-EcmAJDPL9Yu7IGbXnPa2mlCsIEHlLCuUc09VR-WaTLyT~mIkFxSwvkOvjvpI0TZl8WhJZdq1wsIyifsbStVi5SmBOCK9yWm8emltOaspnxdbWk-oya~IvQizP2ZdRoSR1w78~fs-sFJN0ubwX7FiHG38tfIFT46s-9Y6Sim2Yz4f-496zCBd3o~91MDr0MZXZHKupcdXzMT-mHcP8TM9FKDgDLxl3vt2Yx3T7kt3eXmQ1Pzw__"),
                  width: 393.w,
                  height: 393.h),
              AppNameWidget(),
              SplashButton(
                  title: 'Get started ... ',
                  func: () =>
                      Navigator.of(context).pushReplacementNamed(AppRoute.loginRoute))
            ],
          ),
        ),
      )),
    );
  }
}
