import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/screens/home_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_setting/setting.dart';

class ChoosePhotoWidget extends StatelessWidget {
  ChoosePhotoWidget({super.key});

  late Settings chooseImgMethod;

  void initialize(BuildContext context) {
    chooseImgMethod = Settings(title: [
      "Take Photo",
      "Choose From gallery"
    ], action: const [
      Icon(Icons.camera_enhance_outlined, color: Color(0XFFA09BA3)),
      Icon(Icons.photo_library_outlined, color: Color(0XFFA09BA3))
    ], func: [
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          )),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    initialize(context);
    return Container(
      width: 303.w,
      decoration: ShapeDecoration(
        color: AppColors.lightBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: const Radius.circular(12).r),
        ),
      ),
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                chooseImgMethod.title[index],
                style: AppFonts().t20W400,
              ),
              trailing: chooseImgMethod.action[index],
              onTap: chooseImgMethod.func?[index],
            );
          },
          separatorBuilder: (context, index) => const Divider(
                color: Colors.white,
              ),
          itemCount: 2),
    );
  }
}
