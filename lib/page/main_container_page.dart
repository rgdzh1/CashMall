import 'package:CashMall/cashmall.dart';
import 'package:flutter/cupertino.dart';

class MainContainer extends BaseStatelessWidget {
  Map parames;
  final String uniqueId;

  MainContainer(this.parames, this.uniqueId) {
    Application.uniqueId = uniqueId;
  }

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

  Future<bool> showDilog() {
    return showDialog(
          context: _context,
          builder: (context) => new AlertDialog(
            title: new Text('提示'),
            content: new Text('客官，确定退出app?'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('放弃'),
              ),
              new FlatButton(
                onPressed: () => FlutterBoost.singleton.closeCurPage({}),
                child: new Text('退出'),
              ),
            ],
          ),
        ) ??
        false;
  }

  BuildContext _context;

  @override
  Widget myBuild(BuildContext context) {
    _context = context;

    // print("看看计数器" + counter.count.toString());
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
  void setOnListenerBackPress(BuildContext context) {
    var navigaterSettings = ModalRoute.of(context).settings;
    FlutterBoost.containerManager
        .containerStateOf(uniqueId)
        .addBackPressedListener(() {
      if (navigaterSettings.name.toString() == RoutesPath.homePath) {
        showDilog();
      }
    });
  }
}
