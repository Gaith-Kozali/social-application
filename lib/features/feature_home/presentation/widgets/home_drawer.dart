import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting/setting_screen.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_images_path.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.lightBlack,
      child: ListView(shrinkWrap: true, children: [
        DrawerHeader(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage("assets/profil.png"),
                ),
                IconButton.outlined(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert, size: 16.r),
                ),
              ],
            ),
            Text(
              'Donia omar',
              style: AppFonts().t18W500,
            ),
            Text(
              '@doniaomar',
              style: AppFonts().t12W400,
            ),
            Row(
              children: [
                Text(
                  'Followers',
                  textAlign: TextAlign.center,
                  style: AppFonts().t14W500,
                ),
                Text(
                  '(128)',
                  textAlign: TextAlign.center,
                  style:
                      AppFonts().t14W500.copyWith(color: AppColors.lightYellow),
                ),
                const Spacer(),
                Text(
                  'Connects',
                  style: AppFonts().t14W500,
                ),
                Text(
                  '(48)',
                  style:
                      AppFonts().t14W500.copyWith(color: AppColors.lightYellow),
                )
              ],
            )
          ],
        )),
        SizedBox(
          height: 50.h,
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined, color: Colors.white),
          onTap: () {},
          title: Text(
            'Profile',
            style: AppFonts().t17W600.copyWith(color: Colors.white),
          ),
        ),
        ListTile(
          leading: Icon(Icons.mic_none_outlined, color: Colors.white),
          onTap: () {},
          title: Text(
            'Spaces',
            style: AppFonts().t17W600.copyWith(color: Colors.white),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined, color: Colors.white),
          onTap: () {
            showModalBottomSheet(
              backgroundColor: AppColors.backGround,
              isScrollControlled: true,
              isDismissible: true,
              useSafeArea: true,
              context: context,
              builder: (context) => SettingScreen(),
            );
          },
          title: Text(
            'Settings',
            style: AppFonts().t17W600.copyWith(color: Colors.white),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.logout_outlined, color: Colors.white),
          onTap: () {},
          title: Text(
            'Logout',
            style: AppFonts().t17W600.copyWith(color: Colors.white),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppImagesPath.deleteAccountIcon),
          onTap: () {},
          title: Text(
            'Delete Account',
            style: AppFonts().t17W600.copyWith(color: Color(0xFFFF0000)),
          ),
        ),

        // Padding(
        //   padding: EdgeInsets.only(bottom: 41.h, left: 22.w),
        //   child: const Icon(Icons.dark_mode_outlined, color: Colors.white),
        // )
        //SizedBox(height: 200.h,),
      ]),
    );
  }
}
