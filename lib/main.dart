// welcome this project is coded by Gaith kozali start in 2023/1/1

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_theme.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/login_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_create_post/presentation/screens/create_post_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_gallery/presentation/screens/gallery_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/screens/home_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_profile/presentation/screens/profile_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/controllers/edit_profile_controller/edit_profile_cubit.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/edit_profile_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/screens/splash_screen.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import 'core/services/gallery_service.dart';
import 'features/feature_gallery/presentation/controllers/gallery_bloc.dart';

void main() async {
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
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    GalleryBloc(GalleryService())..add(GetImageEvent()),
              ),
              BlocProvider(
                create: (context) => EditProfileCubit(),
              )
            ],
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: AppTheme.darkTheme,
                onGenerateRoute: AppRoute.screenRouteController,
                home: const SplashScreen()),
          );
        });
  }
}
