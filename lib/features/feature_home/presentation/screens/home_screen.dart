import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/bottom_navigation_home.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/edit_float_button.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/home_appbar.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/home_drawer.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/post_widget_with_image.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/post_widget_with_video.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/sound_scroll_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.lightYellow,
                shape: const CircleBorder(),
                child: const Icon(Icons.home_rounded)),
            bottomNavigationBar: const BottomNavigationHome(),
            drawer: const HomeDrawer(),
            body: Stack(
              children: [
                CustomScrollView(
                  slivers: [
                    const HomeAppBar(),
                    SliverPadding(
                      padding: EdgeInsets.only(bottom: 90.h),
                      sliver: SliverList.separated(
                        itemCount: 4,
                        separatorBuilder: (context, index) => const Divider(
                          color: Color(0x0AD9D9D9),
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              if (index == 0) const SoundScrollWidget(),
                             const PostWidgetWithImage(),
                             const PostWidgetWithVideo()
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
                const EditFloatButton()
              ],
            )));
  }
}
