import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/constants/app_images_path.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/widgets/connect_button.dart';
import 'package:auto_size_text/auto_size_text.dart';

//  RenderFlex overflowed by 9.7 pixels in galaxy fold
class RoomsWidget extends StatelessWidget {
  const RoomsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.w,
      height: 154,
      padding:
          EdgeInsets.symmetric(horizontal: 17.w).copyWith(top: 20, bottom: 4),
      decoration: BoxDecoration(
        color: AppColors.lightBlack,
        borderRadius: BorderRadius.circular(12).r,
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // FadeInImage(
          //   width: 136.w,
          //   height: 128,
          //   placeholder: AssetImage(""),
          //   image: NetworkImage("https://via.placeholder.com/136x128"),
          //   fit: BoxFit.fill,
          // ),

          SvgPicture.asset(width: 110.r, height: 90, AppImagesPath.userPicture),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Software engineering buddies', style: AppFonts().t17W600),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'donia & 733 members',
                    style:
                        AppFonts().t20W600.copyWith(color: Color(0xFF8E8E93)),
                  )),
              Row(children: [
                SizedBox(
                  width: 48.w,
                  child: ConnectButton(title: "Join"),
                )
              ]),
            ],
          ),
        ]),
        TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: AppFonts().t12W600,
            )),
      ]),
    );
  }
}
