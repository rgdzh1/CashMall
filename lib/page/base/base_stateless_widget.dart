import 'package:CashMall/cashmall.dart';
import 'package:flutter/material.dart';

abstract class ListenerBackPress {
  //该方法会监听返回按钮
  void setOnListenerBackPress(BuildContext context);
}

abstract class MyBuildWidget {
  //该方法会返回Widget
  Widget myBuild(BuildContext context);
}

abstract class BaseStatelessWidget extends StatelessWidget
    with ListenerBackPress, MyBuildWidget {
  @override
  Widget build(BuildContext context) {
    setOnListenerBackPress(context);
    return myBuild(context);
  }
}
