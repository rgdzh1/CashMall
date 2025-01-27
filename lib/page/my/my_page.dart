import 'package:CashMall/cashmall.dart';

class MyPage extends BaseStatelessWidget  {
  // 头部背景
  Widget _getHeadBg() {
    return Positioned(
      child: Container(
        color: MyColors.primary,
        height: ScreenUtil().setHeight(445),
        width: ScreenUtil().setWidth(750),
      ),
    );
  }

  // 列表背景
  Widget _getListBg() {
    return Positioned(
      top: ScreenUtil().setHeight(317),
      left: ScreenUtil().setWidth(40),
      right: ScreenUtil().setWidth(40),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(ScreenUtil().setWidth(30)),
            topLeft: Radius.circular(ScreenUtil().setWidth(30)),
            bottomRight: Radius.zero,
            bottomLeft: Radius.zero,
          ),
        ),
        child: Container(
          constraints: BoxConstraints.tightFor(
            width: ScreenUtil().setWidth(670),
            height: ScreenUtil().setHeight(919 - ScreenTools.bottomSafeHeight),
          ),
        ),
      ),
    );
  }

  //可点击得list 内容
  Widget _getListContent(BuildContext context) {
    return Positioned(
      top: ScreenUtil().setHeight(492),
      child: Column(
        children: <Widget>[
          MyItemList(
            name: S.of(context).my_item_1,
            imageUrl: ImageUrl.getImageUrl("arrow_drop_ down.png"),
            callback: () {
              Application.router.navigateTo(context, RoutesPath.identityInfoPath);
            },
          ),
          UnderLine(),
          MyItemList(
            name: S.of(context).my_item_2,
            imageUrl: ImageUrl.getImageUrl("arrow_drop_ down.png"),
            callback: () {
//              Fluttertoast.showToast(msg: Strings.my_item_1);
              Application.router.navigateTo(
                context,
                RoutesPath.AboutUsPath,
              );
            },
          ),
          UnderLine(),
          MyItemList(
            name: S.of(context).my_item_4,
            imageUrl: ImageUrl.getImageUrl("arrow_drop_ down.png"),
            callback: () {
              Fluttertoast.showToast(msg: S.of(context).my_item_4);
            },
          ),
          UnderLine(),
        ],
      ),
    );
  }


  @override
  Widget myBuild(BuildContext context) {
    return Container(
      color: MyColors.bg,
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          _getHeadBg(),
          _getListBg(),
          UserLogoPhone(
            imageUrl: ImageUrl.getImageUrl("login_icon.png"),
            phoneNum: "9953671255",
            callback: () {
              Application.router.navigateTo(
                context,
                RoutesPath.loginPath,
              );
            },
          ),
          _getListContent(context),
        ],
      ),
    );
  }

  @override
  void setOnListenerBackPress(BuildContext context) {

  }
}
