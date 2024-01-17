import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/core/constants/app_decoration.dart';
import 'package:socalize_gaith_kozali/core/constants/app_fonts.dart';
import 'package:socalize_gaith_kozali/features/feature_gallery/presentation/widgets/gallery_switch_widget.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import '../controllers/gallery_bloc.dart';


class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 29),
          child: BlocBuilder<GalleryBloc, GalleryState>(
            builder: (context, state) {
              if (state is GetImageState) {
                return Column(
                  children: [
                    const GallerySwitchWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      style: AppFonts().t17W400,
                      decoration: AppDecoration().inputDecorationGallery,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Expanded(
                        child: GridView.builder(
                      itemCount: state.assetEntity.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) => InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.lightBlack,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: FileImage(
                                        state.fileImage.elementAt(index)!)))),
                        onTap: () {
                          // route to screen make cut zoom
                          Navigator.pushNamed(context, AppRoute.editImageRoute,
                              arguments: state.fileImage.elementAt(index));
                        },
                      ),
                    ))
                  ],
                );
              } else {
                return Center(
                  child: Text(
                    "Loading",
                    style: AppFonts().t20W400,
                  ),
                );
              }
            },
          )),
    ));
  }
}
