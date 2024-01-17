import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/video_widget.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../feature_search/presentation/widgets/post_widget.dart';

class PostWidgetWithVideo extends StatefulWidget {
  const PostWidgetWithVideo({super.key});

  @override
  State<PostWidgetWithVideo> createState() => _PostWidgetWithVideoState();
}

class _PostWidgetWithVideoState extends State<PostWidgetWithVideo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w).copyWith(top: 20),
          height: 420,
          width: 400.w,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: AppColors.lightBlackBlue,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(top: const Radius.circular(34).r),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                  width: 360.w,
                  height: 204,
                  child: VideoWidget(videoPath: "assets/video2.mp4")),
              const PostWidget()
            ],
          )),
    );
  }
}
// welcome this project is coded by Gaith kozali start in 2023/1/1