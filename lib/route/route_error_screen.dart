import 'package:flutter/material.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';

class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "route error check the app_route file or Navigator name",
        style: AppFonts().t20W600.copyWith(color: AppColors.red),
      )),
    );
  }
}
