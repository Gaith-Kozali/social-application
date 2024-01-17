import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          background: AppColors.backGround, seedColor: AppColors.lightYellow),
      iconTheme: IconThemeData(color: AppColors.lightYellow),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent, shape: InputBorder.none));
}
