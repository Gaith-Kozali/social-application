import 'package:flutter/material.dart';
import '../../../../../core/constants/app_fonts.dart';

class CustomEditAppBar extends StatelessWidget {
  const CustomEditAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        Text('Edit Profile', style: AppFonts().t17W700),
        TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: AppFonts().t17W400,
            ))
      ],
    );
  }
}
