import 'package:flutter/material.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getFullScreenHeight(BuildContext context) {
  Orientation orientation = MediaQuery.of(context).orientation;

  if (orientation == Orientation.portrait) {
    return MediaQuery.of(context).size.height;
  } else {
    return MediaQuery.of(context).size.width;
  }
}

// get height with out padding and appbar height
double getScreenHeight(BuildContext context, [AppBar? appBar]) {
  double appBarHeight = appBar != null ? appBar.preferredSize.height : 0;
  Orientation orientation = MediaQuery.of(context).orientation;

  if (orientation == Orientation.portrait) {
    print(MediaQuery.of(context).padding.vertical);
    print(MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.vertical -
        appBarHeight);
    return MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.vertical -
        appBarHeight;
  } else {
    return MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.horizontal -
        appBarHeight;
  }
}

// return the original width of device
double getRealWidth(BuildContext context) {
  Orientation orientation = MediaQuery.of(context).orientation;
  if (orientation == Orientation.landscape) {
    return MediaQuery.of(context).size.height;
  } else {
    return MediaQuery.of(context).size.width;
  }
}
