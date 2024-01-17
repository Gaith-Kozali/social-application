// welcome this project is coded by Gaith kozali start in 2023/1/1
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

class BottomNavigationHome extends StatelessWidget {
  const BottomNavigationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.backGround,
      height: 80.h,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home_filled)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.mic_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message))
        ],
      ),
    );
  }
}
