import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_decoration.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/core/functions/screen_informations.dart';
import 'package:socalize_gaith_kozali/features/feature_create_post/presentation/widgets/bottom_sheet_create_post.dart';
import 'package:socalize_gaith_kozali/features/feature_create_post/presentation/widgets/appbar/create_post_appbar.dart';
import 'package:socalize_gaith_kozali/features/feature_create_post/presentation/widgets/user_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_home/presentation/widgets/video_widget.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';

class CreatePostScreen extends StatelessWidget {
  CreatePostScreen({super.key});
  bool addMedia = false;
  TextEditingController ctrlPost = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // to make this to remove homeScreen from stack of route to called disposed function in video_widget
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Navigator.of(context).pushReplacementNamed(AppRoute.homeRoute);
      },
      child: Scaffold(
        appBar: const CreatePostAppBar(),
        bottomSheet: getKeyBoardHeight(context) > 0
            ? const BottomSheetCreatePost()
            : const SizedBox(),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: SizedBox(
              height: getScreenHeight(context),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 67.h, bottom: 32.h),
                    child: const UserWidget(),
                  ),
                  addMedia
                      ? TextFormField(
                          controller: ctrlPost,
                          maxLines: null,
                          style: AppFonts().t14W500,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        )
                      : TextFormField(
                          controller: ctrlPost,
                          maxLines: 7,
                          style: AppFonts().t14W500,
                          decoration:
                              AppDecoration().inputDecorationCreatePost),
                  SizedBox(
                    height: 10.h,
                  ),
                  addMedia
                      ? AspectRatio(
                          aspectRatio: 1.0,
                          child: VideoWidget(videoPath: "assets/video.mp4"))
                      : const SizedBox()
                ],
              ),
            )),
      ),
    );
  }
}
