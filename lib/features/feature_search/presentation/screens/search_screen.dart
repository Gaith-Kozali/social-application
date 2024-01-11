import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/controllers/search_cubit.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/screens/result_screen.dart';
import 'package:socalize_gaith_kozali/features/feature_search/presentation/widgets/search_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_fonts.dart';

List<String> information = [
  "Amjad",
  "ahmad",
  "omar ahmad",
  "yamen",
  "gaith kozali"
];

class SearchScreen extends StatelessWidget {
 const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Scaffold(
        appBar: SearchAppBar(inSearchPage: true),
        body: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            int suggestionLength =
                BlocProvider.of<SearchCubit>(context).suggestions.length;
            if (state is SuggestionState) {
              return ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                itemCount: suggestionLength,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          BlocProvider.of<SearchCubit>(context)
                              .suggestions[index],
                          style: AppFonts().t17W400,
                        ),
                        leading: Icon(
                          Icons.search,
                          size: 28.r,
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ResultScreen(),
                          ));
                        },
                      ),
                      if (suggestionLength == index + 1)
                        Padding(
                          padding: EdgeInsets.only(top: 14.h),
                          child: TextButton(
                            child: Text('See results for donia',
                                style: AppFonts()
                                    .t17W400
                                    .copyWith(color: Color(0xFFF9D880))),
                            onPressed: () {},
                          ),
                        ),
                    ],
                  );
                },
              );
            } else {
              return Padding(
                padding: EdgeInsets.only(top: 30.h, left: 16.w),
                child: Text(
                  "No Recent Search's",
                  style: AppFonts()
                      .t17W400
                      .copyWith(color: Colors.white.withOpacity(0.5)),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
