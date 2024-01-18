import 'package:flutter/material.dart';
import 'package:socalize_gaith_kozali/core/services/gallery_service.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import '../../../../core/constants/app_colors.dart';

class BottomSheetCreatePost extends StatelessWidget {
  const BottomSheetCreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 1),
                colors: AppColors.blackBlue)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.galleryRoute);
                },
                icon: const Icon(
                  Icons.photo_outlined,
                )),
            IconButton(
                onPressed: () async {
                  await GalleryService.takeVideo();
                },
                icon: const Icon(Icons.videocam_outlined)),
            IconButton(
                onPressed: () {

                },
                icon: const Icon(Icons.emoji_emotions_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ],
        ));
  }
}
