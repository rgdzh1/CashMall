import 'package:CashMall/cashmall.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {

//  Future<bool> showDilog(BuildContext context) {
//    return showDialog(
//          context: context,
//          builder: (context) => new AlertDialog(
//            title: new Text('提示'),
//            content: new Text('客官，确定退出app?'),
//            actions: <Widget>[
//              new FlatButton(
//                child: new Text('放弃'),
//              ),
//              new FlatButton(
//                onPressed: () => FlutterBoost.singleton.closeCurPage({}),
//                child: new Text('退出'),
//              ),
//            ],
//          ),
//        ) ??
//        false;
//  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    setOnListenerBackPress();
  }

  @override
  void dispose() {
    super.dispose();
    _backPressedListenerUnsub?.call();
  }

  VoidCallback _backPressedListenerUnsub;

  //该方法会监听返回按钮
  void setOnListenerBackPress() {
    var navigaterSettings = ModalRoute.of(context).settings;
    if (_backPressedListenerUnsub == null) {
      _backPressedListenerUnsub = FlutterBoost.containerManager
          .containerStateOf(Application.uniqueId)
          .addBackPressedListener(
        () {
          if (BoostContainer.of(context).onstage &&
              ModalRoute.of(context).isCurrent) {
            if (isShowDialog()) {
              showExitDialog();
            } else {
              Navigator.of(context).pop();
            }
          }
        },
      );
    }
  }

  //该方法时用来判断按返回键时候, 是否直接退出.
  bool isShowDialog();

  //该方法返回一个Dialog
  Future<T> showExitDialog<T>();
}
