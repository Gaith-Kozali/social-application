import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting/account_setting_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/edit_profile_screen.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_fonts.dart';
import '../../../../../route/app_route.dart';
import 'profile_container.dart';

class ProfileWithSettingWidget extends StatelessWidget {
  const ProfileWithSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12).r,
          color: AppColors.lightBlack),
      child: Column(
        children: [
          ProfileContainer(
            func: () =>
                AppRoute.buttonSheetNavigator(context, EditProfileScreen()),
          ),
          ListTile(
            title: Text(
              'Account Settings',
              style: AppFonts().t20W400,
            ),
            leading: const Icon(Icons.settings, color: Colors.white),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
            onTap: () =>
                AppRoute.buttonSheetNavigator(context, AccountSettingScreen()),
          )
        ],
      ),
    );
  }
}
