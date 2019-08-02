import 'package:CashMall/cashmall.dart';
import 'package:flutter/cupertino.dart';

class MainContainer extends StatefulWidget {
  String uniqueId;
  Map parames;

  MainContainer(this.uniqueId, this.parames) {
    Application.uniqueId = uniqueId;
  }

  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends BaseState<MainContainer> {
  List<BottomNavigationBarItem> _getTabs(BuildContext context) {
    return [
      BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.home,
          size: ScreenUtil().setWidth(44.0),
        ),
        title: Text(
          S.of(context).home,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(20.0),
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.person,
          size: ScreenUtil().setWidth(44.0),
        ),
        title: Text(
          S.of(context).my,
          style: TextStyle(
            fontSize: ScreenUtil().setWidth(20.0),
          ),
        ),
      ),
    ];
  }

  List<Widget> _getPages() {
    return [
      HomePage(),
      MyPage(),
    ];
  }

  //记录导航点击事件得index
  static final Counter counter = new Counter();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750.0, height: 1334.0)
      ..init(context);
    return ChangeNotifierProvider<Counter>.value(
      value: counter,
      child: Consumer<Counter>(
        builder: (BuildContext context, Counter counter, _) => Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: SizedBox(
            height: ScreenUtil().setHeight(108),
            width: ScreenUtil().setWidth(750),
            child: BottomNavigationBar(
              selectedItemColor: MyColors.primary,
              unselectedItemColor: MyColors.fontColor,
              items: _getTabs(context),
              type: BottomNavigationBarType.fixed,
              currentIndex: counter.count,
              onTap: (int index) {
                counter.selectCount(index);
              },
            ),
          ),
          body: IndexedStack(
            index: counter.count,
            children: _getPages(),
          ),
        ),
      ),
    );
  }

  @override
  bool isShowDialog() => true;

  @override
  Future<bool> showExitDialog<bool>() async {
    return showCupertinoDialog(
            context: context,
            builder: (BuildContext context) {
              return new CupertinoAlertDialog(
                title: new Text(
                  "标题",
                ),
                content: new Text("内容"),
                actions: <Widget>[
                  new Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: MyColors.bg,
                        ),
                        top: BorderSide(
                          color: MyColors.bg,
                        ),
                      ),
                    ),
                    child: FlatButton(
                      child: new Text("确定"),
                      onPressed: () {
                        FlutterBoost.singleton.closeCurPage({});
                      },
                    ),
                  ),
                  new Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: MyColors.bg,
                        ),
                      ),
                    ),
                    child: FlatButton(
                      child: new Text("取消"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              );
            }) ??
        false;
  }
}
