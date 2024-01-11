import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/constants/app_images_path.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/auth_button.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/widgets/choose_image_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/widgets/splash_button.dart';

class AppProfileScreen extends StatelessWidget {
  AppProfileScreen({super.key});
  AppFonts appFonts = AppFonts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Center(
            child: SizedBox(
          height: getScreenHeight(context),
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add a profile picture', style: appFonts.t20W600),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Add a profile picture so your friends know it’s you. Everyone will be able to see your picture.',
                      style: appFonts.t17W400,
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    Center(
                        child: SvgPicture.asset(AppImagesPath.userPicture,
                            height: 181.r, width: 181.r)),
                    const Spacer(),
                    AuthButton(
                      title: "Add picture",
                      func: () {
                        showModalBottomSheet(
                          backgroundColor: const Color(0XFF181B26),
                          isScrollControlled: true,
                          isDismissible: false,
                          enableDrag: false,
                          useSafeArea: true,
                          context: context,
                          builder: (context) => const ChooseImageWidget(),
                        );
                      },
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SplashButton(
                      title: "Skip",
                      func: () {},
                    )
                  ])),
        )),
      ),
    );
  }
}
