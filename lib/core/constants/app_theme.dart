import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          background: AppColors.backGround, seedColor: AppColors.lightYellow),
      iconTheme: const IconThemeData(color: AppColors.lightYellow),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent, shape: InputBorder.none),);
}
