import 'package:CashMall/cashmall.dart';
import 'package:flutter/cupertino.dart';

//class MainContainer extends StatefulWidget {
//  @override
//  _MainContainerState createState() => _MainContainerState();
//}

//class _MainContainerState extends State<MainContainer>  with AutomaticKeepAliveClientMixin{
//  List<BottomNavigationBarItem> _getTabs() {
//    return [
//      BottomNavigationBarItem(
//        icon: Icon(
//          CupertinoIcons.home,
//          size: ScreenUtil().setWidth(44.0),
//        ),
//        title: Text(
//          Strings.home,
//          style: TextStyle(
//            fontSize: ScreenUtil().setSp(20.0),
//          ),
//        ),
//      ),
//      BottomNavigationBarItem(
//        icon: Icon(
//          CupertinoIcons.person,
//          size: ScreenUtil().setWidth(44.0),
//        ),
//        title: Text(
//          Strings.my,
//          style: TextStyle(
//            fontSize: ScreenUtil().setWidth(20.0),
//          ),
//        ),
//      ),
//    ];
//  }
//
//  List<Widget> _getPages() {
//    return [
//      HomePage(),
//      MyPage(),
//    ];
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    ScreenUtil.instance = ScreenUtil(width: 750.0, height: 1334.0)
//      ..init(context);
//    var counter = new Counter();
//    return ChangeNotifierProvider<Counter>.value(
//      value: counter,
//      child: Consumer<Counter>(
//        builder: (BuildContext context, Counter counter, _) => Scaffold(
//          backgroundColor: Colors.white,
//          bottomNavigationBar: SizedBox(
//            height: ScreenUtil().setHeight(98),
//            width: ScreenUtil().setWidth(750),
//            child: BottomNavigationBar(
//              selectedItemColor: MyColors.primary,
//              unselectedItemColor: MyColors.fontColor,
//              items: _getTabs(),
//              type: BottomNavigationBarType.fixed,
//              currentIndex: counter.count,
//              onTap: (int index) {
//                counter.selectCount(index);
//              },
//            ),
//          ),
//          body: IndexedStack(
//            index: counter.count,
//            children: _getPages(),
//          ),
//        ),
//      ),
//    );
//  }
//
//  @override
//  // TODO: implement wantKeepAlive
//  bool get wantKeepAlive => true;
//}

class MainContainer extends StatelessWidget {
  Map parames;
  String uniqueId;

  MainContainer(this.parames, this.uniqueId);

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
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('退出'),
              ),
            ],
          ),
        ) ??
        false;
  }

  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    FlutterBoost.containerManager
        .containerStateOf(uniqueId)
        .addBackPressedListener(() {
      if (ModalRoute.of(context).isCurrent &&
          BoostContainer.of(context).onstage) {
//        FlutterBoost.singleton.closeCurPage({});
        showDilog();
      }
    });
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
}
