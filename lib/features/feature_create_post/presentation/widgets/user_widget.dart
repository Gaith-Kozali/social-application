import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 41.r,
          backgroundImage: AssetImage("assets/profil.png"),
        ),
        SizedBox(
          width: 22.w,
        ),
        Column(
          children: [
            Text(
              'Shimaa Ahmed',
              style: AppFonts().t20W600,
            ),
            SizedBox(
              height: 19.h,
            ),
            Row(
              children: [
                SizedBox(
                  height: 28,
                  width: 80.w,
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8).r,
                          )),
                          padding: const MaterialStatePropertyAll<EdgeInsets>(
                              EdgeInsets.zero),
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  AppColors.lightBlue)),
                      onPressed: () {},
                      icon: const Icon(Icons.people_alt_outlined,
                          color: AppColors.blueButton),
                      label: Text(
                        'Friends',
                        style: AppFonts()
                            .t12W500
                            .copyWith(color: AppColors.blueButton),
                      )),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  height: 28,
                  width: 80.w,
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8).r,
                          )),
                          padding: const MaterialStatePropertyAll<EdgeInsets>(
                              EdgeInsets.zero),
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  AppColors.lightBlue)),
                      onPressed: () {},
                      icon: const Icon(Icons.public_outlined,
                          color: AppColors.blueButton),
                      label: Text(
                        'Public',
                        style: AppFonts()
                            .t12W500
                            .copyWith(color: AppColors.blueButton),
                      )),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
