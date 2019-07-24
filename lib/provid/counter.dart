import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  get count => _count;

  selectCount(int index) {
    _count = index;
    notifyListeners();
  }

  addCount() {
    _count++;
    notifyListeners();
  }

  subCount() {
    _count--;
    notifyListeners();
  }
}
