import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';

import 'app_colors.dart';

class AppDecoration {
  InputDecoration inputDecoration1 = InputDecoration(
      filled: true,
      fillColor: AppColors.lightBlack,
      hintText: "email or mobile number",
      hintStyle: AppFonts().t20W400);

  InputDecoration inputDecorationEditPage = InputDecoration(
    fillColor: AppColors.lightBlack,
    filled: true,
    isDense: true,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20).r,
        borderSide: const BorderSide(color: AppColors.lightBlack)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20).r,
        borderSide: const BorderSide(color: AppColors.lightBlack)),
  );

  InputDecoration inputDecorationGallery = InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 0),
      filled: true,
      isDense: true,
      fillColor: AppColors.lightBlack,
      hintText: "Search",
      prefixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 28.r,
            color: AppColors.darkWhite,
          )),
      hintStyle: AppFonts().t20W400,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.lightBlack,
          )),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.lightBlack,
          )));
}
