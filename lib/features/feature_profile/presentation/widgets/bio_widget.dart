import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_images_path.dart';

class BioWidget extends StatelessWidget {
  const BioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.w,
      height: 217,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16),
      decoration: ShapeDecoration(
        color: AppColors.lightBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20).r,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bio',
                style: AppFonts().t18W500,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.silver,
                  ))
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.jobIcon),
              SizedBox(
                width: 12.w,
              ),
              Text(
                'Flutter developer and .net in soon',
                style: AppFonts().t16W400,
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.studyIcon),
              SizedBox(
                width: 12.w,
              ),
              Text(
                'Studied IT in Aiu',
                style: AppFonts().t16W400,
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImagesPath.studyIcon),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "Trainee flutter at Cyber royale",
                style: AppFonts().t16W400,
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.location_on_outlined,
                  color: AppColors.lightYellow),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "From Syria",
                style: AppFonts().t16W400,
              )
            ],
          )
        ],
      ),
    );
  }
}
