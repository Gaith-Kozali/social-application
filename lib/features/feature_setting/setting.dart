import 'package:flutter/material.dart';

class Settings {
  Settings({required this.title, action, leading, func, this.containerTitle})
      : action = action ??
            List.filled(
                title.length,
                const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white)),
        leading = leading ?? [],
        func = func ?? List.filled(title.length, () {});
  String? containerTitle;
  List<String> title;
  List<Widget> action;
  List<Widget> leading;
  List<VoidCallback> func;

  void setActionAtIndex(int index, Widget widget) {
    if (index >= 0 && index < action.length) {
      action[index] = widget;
    }
  }

  void setToAllAction(Widget widget) {
    action = List.filled(title.length, widget);
  }

  void setFuncAtIndex(int index, VoidCallback func) {
    this.func[index] = func;
  }
}
