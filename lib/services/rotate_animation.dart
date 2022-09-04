import 'package:flutter/material.dart';

class RotateAnimation extends ChangeNotifier {
  int rotate = 0;

  int get isRotating => rotate;

  refreshRotate() async {
    rotate ++;

    notifyListeners();
  }
}
