import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.backGround,
      elevation: 0,
      floating: true,
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: AppColors.lightYellow,
            ))
      ],
      leading: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: CircleAvatar(
            radius: 20.r,
            backgroundImage: AssetImage("assets/profil.png"),
          )),
      title: Text(
        'SOCIALIZE',
        style: TextStyle(
          color: Color(0xFFFFD771),
          fontSize: 30.spMin,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
          letterSpacing: 0.37,
        ),
      ),
    );
  }
}
