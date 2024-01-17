import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/post_widget_with_video.dart';
import 'package:socalize_gaith_kozali/features/feature_profile/presentation/widgets/bio_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_profile/presentation/widgets/create_post_button.dart';
import 'package:socalize_gaith_kozali/features/feature_profile/presentation/widgets/custom_sliver_profile_appaar.dart';
import 'package:socalize_gaith_kozali/features/feature_profile/presentation/widgets/personal_info_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CustomScrollView(slivers: [
            SliverPadding(
              padding: EdgeInsets.only(bottom: 50.r),
              sliver: SliverPersistentHeader(
                delegate: CustomSliverProfileAppBar(
                    expandedHeight: 240.h, context: context),
                pinned: true,
              ),
            ),
            SliverList.separated(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    if (index == 0)
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: const PersonalInfoWidget()),
                    if (index == 0)
                      Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: const BioWidget()),
                    if (index == 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Activites',
                            style: AppFonts().t18W500,
                          ),
                          CreatePostButton()
                        ],
                      ),
                    const PostWidgetWithVideo()
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 24.h),
            )
          ])),
    ));
  }
}
