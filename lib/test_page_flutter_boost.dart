import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'constant/native_path.dart';
import 'config/application.dart';
import 'config/route/route_paths.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CashMall"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("第一个页面"),
            RaisedButton(
              child: Text("跳转到SecondActivity中去"),
              onPressed: () {
                FlutterBoost.singleton.openPage(NativePath.SecondPath, {});
//                FlutterBoost.singleton.openPage(NativePath.SecondPath, {"query": {"aaa": "bbb"}});
              },
            )
          ],
        ),
      ),
    );
  }
}

class ScondePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Column(
        children: <Widget>[
          InkWell(
            child: Text("第二个页面"),
            onTap: () {
              Application.router
                  .navigateTo(context, RoutesPath.threePath,
                      transition: TransitionType.fadeIn)
                  .then((result) {
                if (result == "ok") {
                  print("回调");
                  Fluttertoast.showToast(msg: "我从上一个界面接收到得信息$result");
                }
              });
//              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class ThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三个页面"),
        leading: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              //remove掉当前界面, 打开新得fourpage界面, 销毁沿路的page页面.但是如果是flutter boost 界面将销毁无效
              Navigator.of(context).pushNamedAndRemoveUntil(RoutesPath.fourPath, ModalRoute.withName(RoutesPath.homePath));
            }),
      ),
      body: Container(
        alignment: Alignment.center,
        child: InkWell(
          child: Text("第三个页面"),
          onTap: () {
//            Navigator.pop(context, "ok");
          Application.router.navigateTo(context, RoutesPath.fourPath);
          },
        ),
      ),
    );
  }
}

class FourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第四个页面"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: InkWell(
          child: Text("第四个页面"),
          onTap: () {},
        ),
      ),
    );
  }
}
