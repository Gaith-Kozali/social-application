import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';

class CustomSliverProfileAppBar extends SliverPersistentHeaderDelegate {
  CustomSliverProfileAppBar(
      {required this.expandedHeight, required this.context});
  double expandedHeight;
  BuildContext context;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double radius = 60.r;
    final double top = expandedHeight - shrinkOffset - radius / 2;
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        bakGroundImage(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
          top: top.h,
          right: 100,
          left: 100,
          child: Opacity(
              opacity:
                  shrinkOffset > expandedHeight - (kToolbarHeight + radius * 2)
                      ? 0
                      : 1,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage("assets/picture.jpg",),
                radius: radius,
              )),
        )
      ],
    );
  }

  Widget bakGroundImage(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Image.asset(
          "assets/frame.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );
  Widget buildAppBar(double shrinkOffset) => Opacity(
      opacity: appear(shrinkOffset),
      child: AppBar(
          backgroundColor: AppColors.lightBlack,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          title: Text(
            'Profile',
            style: AppFonts().t20W600,
          )));
  double appear(double shrinkOffset) => shrinkOffset / (expandedHeight);
  double disappear(double shrinkOffset) => 1 - (shrinkOffset / expandedHeight);
  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

// welcome this project is coded by Gaith kozali start in 2023/1/1
