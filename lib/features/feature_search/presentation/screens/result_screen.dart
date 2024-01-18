import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/widgets/search_appbar.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/widgets/see_all_widgets/see_all_people_widget.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/widgets/see_all_widgets/see_all_post_widget.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: SearchAppBar(),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoute.homeRoute);
              },
              backgroundColor: AppColors.lightYellow,
              shape: const CircleBorder(),
              child: const Icon(Icons.home_rounded)),
          body: TabBarView(children: [
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              itemCount: 1,
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: SeeAllPeopleWidgets()),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: SeeAllPostWidget()),
                    // Padding(
                    //     padding: EdgeInsets.only(bottom: 10),
                    //     child: RoomsWidget()),
                  ],
                );
              },
            ),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
          ]),
        ));
  }
}

// welcome this project is coded by Gaith kozali start in 2023/1/1
