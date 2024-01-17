import 'dart:io';
import 'package:flutter/material.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/login_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/add_birthday_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/add_email_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/add_phone_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/add_user_name_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/create_password_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/option_information_screens/add_profile_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/re_enter_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_authentication/presentation/screens/signup_screens/verification_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_create_post/presentation/screens/create_post_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_create_post/presentation/screens/open_camera_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_gallery/presentation/screens/post_gallery_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/screens/home_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/screens/result_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/screens/search_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_gallery/presentation/screens/edit_image_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_gallery/presentation/screens/gallery_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting/account_setting_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting/color_scheme_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/edit_profile_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting/resources_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/presentation/screens/setting/setting_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_splash/presentation/screens/splash_screen.dart';
import 'package:socalize_gaith_kozali/route/route_error_screen.dart';

class AppRoute {
  static const homeRoute = "/";
  static const splashRoute = "/Splash";
  static const loginRoute = "/Login";
  static const addEmailRoute = "/AddEmail";
  static const createPasswordRoute = "/CreatePassword";
  static const reEnterRoute = "ReEnter";
  static const verificationRoute = "/Verification";
  static const addUserNameRoute = "/AddUserName";
  static const addPhoneRoute = "/AddPhone";
  static const addBirthRoute = "/AddBirthDay";
  static const appProfileRoute = "/AppProfile";
  static const galleryRoute = "/Gallery";
  static const editImageRoute = "/EditImage";
  static const searchRoute = "/Search";
  static const resultRoute = "/Result";
  static const settingRoute = "/Setting";
  static const accountSettingRoute = "/AccountSetting";
  static const colorSchemeRoute = "/ColorScheme";
  static const editProfileRoute = "/EditProfile";
  static const resourcesRoute = "/Resources";
  static const createPostRoute = "/CreatePost";
  static const openCameraRoute = "/OpenCamera";
  static const postGalleyRoute = "/PostGalley";

  static Route<dynamic> screenRouteController(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      // authentication route
      case splashRoute:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case loginRoute:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case addEmailRoute:
        return MaterialPageRoute(
          builder: (context) => AddEmailScreen(),
        );
      case createPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => CreatePasswordScreen(),
        );
      case reEnterRoute:
        return MaterialPageRoute(
          builder: (context) => ReEnterScreen(),
        );
      case verificationRoute:
        return MaterialPageRoute(
          builder: (context) => VerificationScreen(),
        );
      case addUserNameRoute:
        return MaterialPageRoute(
          builder: (context) => AddUserNameScreen(),
        );
      case addPhoneRoute:
        return MaterialPageRoute(
          builder: (context) => AddPhoneScreen(),
        );
      case addBirthRoute:
        return MaterialPageRoute(
          builder: (context) => AddBirthDayScreen(),
        );
      case appProfileRoute:
        return MaterialPageRoute(
          builder: (context) => AppProfileScreen(),
        );
      //routes of gallery and make cut zoom of picture
      case galleryRoute:
        return MaterialPageRoute(
          builder: (context) => GalleryScreen(),
        );
      case editImageRoute:
        return MaterialPageRoute(
          builder: (context) =>
              EditImageScreen(image: settings.arguments as File),
        );
      //routes of search and result of search
      case searchRoute:
        return MaterialPageRoute(
          builder: (context) => SearchScreen(),
        );
      case resultRoute:
        return MaterialPageRoute(
          builder: (context) => ResultScreen(),
        );
      //routes of settings
      case settingRoute:
        return MaterialPageRoute(
          builder: (context) => SettingScreen(),
        );
      case accountSettingRoute:
        return MaterialPageRoute(
          builder: (context) => AccountSettingScreen(),
        );
      case colorSchemeRoute:
        return MaterialPageRoute(
          builder: (context) => ColorSchemeScreen(),
        );
      case editProfileRoute:
        return MaterialPageRoute(
          builder: (context) =>
              EditProfileScreen(image: settings.arguments as File),
        );
      case resourcesRoute:
        return MaterialPageRoute(
          builder: (context) => ResourcesScreen(),
        );
      //routes of create post and ...
      case createPostRoute:
        return MaterialPageRoute(
          builder: (context) => CreatePostScreen(),
        );

      // case openCameraRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => OpenCameraScreen(),
      //   );
      case postGalleyRoute:
        return MaterialPageRoute(
          builder: (context) => PostGalleyScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => RouteErrorScreen(),
        );
    }
  }
}
