import 'package:flutter/material.dart';

class BoolProvider with ChangeNotifier {
  bool _defaulStat = false;

  get defaulStat => _defaulStat;

  setStat(bool defaulStat) {
    _defaulStat = defaulStat;
    notifyListeners();
  }
}
