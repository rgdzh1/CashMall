// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:io';

import 'package:test_api/test_api.dart';

import 'bean/home_dart_entity.dart';

void main() {
  test('my first unit test', () async {
    String json = '{"name": "zll","age": 29,"star": 4.5,"married": true}';
     var convert2 = JsonDecoder().convert(json);
    HomeDartEntity fromMap = HomeDartEntity.fromJson(convert2);
    print(fromMap.married);
  });
}
