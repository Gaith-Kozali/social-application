import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socalize_gaith_kozali/core/constants/app_colors.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/controllers/search_cubit.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/screens/search_screen.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_images_path.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  SearchAppBar({super.key, this.inSearchPage = false});
  bool inSearchPage;
  TextEditingController ctrlSearch = TextEditingController();
  List<Tab> tabItems = [
    Tab(
      child: Text(
        "All",
        style: AppFonts().t20W600,
      ),
    ),
    Tab(
      child: Text("Peoples", style: AppFonts().t20W600),
    ),
    Tab(
      child: Text("Posts", style: AppFonts().t20W600),
    ),
    Tab(
      child: Text("Room", style: AppFonts().t20W600),
    ),
    Tab(
      child: Text("Videos", style: AppFonts().t20W600),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(
            inSearchPage ? kToolbarHeight : kToolbarHeight + 90),
        child: Column(
          mainAxisAlignment: inSearchPage
              ? MainAxisAlignment.end
              : MainAxisAlignment.spaceEvenly,
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 24.r,
                      )),
                  SizedBox(
                    width: 356.w,
                    height: 40,
                    child: TextFormField(
                      controller: ctrlSearch,
                      style: AppFonts().t17W400,
                      onTap: () {
                        !inSearchPage
                            ? Navigator.of(context)
                                .pushNamed(AppRoute.searchRoute)
                            : null;
                      },
                      onChanged: (value) {
                        BlocProvider.of<SearchCubit>(context)
                            .suggestionFunc(value, information);
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 12.w),
                          filled: true,
                          isDense: true,
                          fillColor: Color(0XFF181B26),
                          hintText: "Search",
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 28.r,
                              )),
                          suffixIcon: inSearchPage
                              ? SizedBox()
                              : IconButton(
                                  icon: SvgPicture.asset(AppImagesPath.exitIcon,
                                      height: 28.r, width: 28.r),
                                  onPressed: () {
                                    ctrlSearch.clear();
                                  },
                                ),
                          hintStyle: AppFonts().t20W400,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  )
                ]),
            inSearchPage
                ? const SizedBox()
                : TabBar(
                    dividerHeight: 4,
                    tabAlignment: TabAlignment.start,
                    dividerColor: AppColors.blue,
                    indicatorColor: AppColors.lightYellow,
                    isScrollable: true,
                    tabs: tabItems),
          ],
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(inSearchPage ? kToolbarHeight : kToolbarHeight + 90);
}
