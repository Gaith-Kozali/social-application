import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';

class ConnectButton extends StatelessWidget {
  ConnectButton({super.key, this.title = "connect"});
  String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 24,
      child: ElevatedButton(
          style: ButtonStyle(
              padding:
                  const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
              backgroundColor:
                  const MaterialStatePropertyAll<Color>(AppColors.lightYellow),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5).r,
              ))),
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFF042960),
              fontSize: 12.spMin,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}
