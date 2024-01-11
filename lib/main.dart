import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_theme.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/add_birthday_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/add_email_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/login_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/add_phone_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/add_user_name_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/re_enter_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/verification_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/screens/home_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/screens/result_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/screens/search_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/widgets/setting_container_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/screens/splash_screen.dart';

import 'features/feature_authentication/presentation/screens/signup_screens/create_password_screen.dart';
import 'features/feature_authentication/presentation/screens/signup_screens/option_information_screens/add_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.darkTheme,
              home: HomeScreen());
        });
  }
}
