import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../feature_search/presentation/widgets/post_widget.dart';

class PostWidgetWithImage extends StatelessWidget {
  const PostWidgetWithImage({super.key});

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
              FadeInImage(
                  width: 360.w,
                  height: 204,
                  fit: BoxFit.cover,
                  placeholder: AssetImage(""),
                  image: const NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo2hc_zr5HXXIbDHt1TTM28TozeFRvUik-WNsNwZMyfA&s")),
              const Spacer(),
              PostWidget()
            ],
          )),
    );
  }
}
