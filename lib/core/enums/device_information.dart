import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeviceInformation {
  DeviceInformation(
      {required this.width,
      required this.height,
      required this.id,
      required this.orientation,
      required this.deviceType});
  double width;
  double height;
  Orientation orientation;
  String id;
  DeviceType deviceType;
}
