import 'package:flutter/material.dart';

class Settings {
  Settings(
      {required this.title,
      List<Widget>? action,
      List<Widget>? leading,
      this.func})
      : action = action ??
            List.filled(title.length,
                Icon(Icons.arrow_forward_ios_outlined, color: Colors.white)),
        leading = leading ??
            List.filled(title.length,
                Icon(Icons.arrow_forward_ios_outlined, color: Colors.white));

  List<String> title;
  List<Widget> action;
  List<Widget> leading;
  List<VoidCallback>? func;

  void setActionAtIndex(int index, Widget widget) {
    if (index >= 0 && index < action.length) {
      action[index] = widget;
    }
  }

  void setToAllAction(Widget widget) {
    action = List.filled(title.length, widget);
  }
}
