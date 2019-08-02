import 'package:CashMall/cashmall.dart';

class IdentityPage extends StatefulWidget {
  @override
  _IdentityPageState createState() => _IdentityPageState();
}

class _IdentityPageState extends BaseState<IdentityPage> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    setOnListenerBackPress();
  }

  VoidCallback _backPressedListenerUnsub;

  void setOnListenerBackPress() {
    print("执行了吗,心累");
    if (_backPressedListenerUnsub == null) {
      _backPressedListenerUnsub = FlutterBoost.containerManager
          .containerStateOf(Application.uniqueId)
          .addBackPressedListener(() {
        if (BoostContainer.of(context).onstage &&
            ModalRoute.of(context).isCurrent) {
          Navigator.of(context).pop();
        }
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _backPressedListenerUnsub?.call();
  }

  @override
  Widget build(BuildContext context) {
    setOnListenerBackPress();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        centerTitle: true,
        elevation: 1,
        title: TitleText(
          title: S.of(context).authentication_info,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: MyColors.fontColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: ScreenUtil.instance.setHeight(100),
              color: MyColors.bg,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.instance.setWidth(20),
                    ),
                  ),
                  Image.asset(
                    ImageUrl.getImageUrl("identity_hint_icon.png"),
                    width: ScreenUtil.instance.setWidth(30),
                    height: ScreenUtil.instance.setHeight(30),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.instance.setWidth(5),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil.instance.setWidth(630),
                    child: Text(
                      S.of(context).authentication_head_desc,
                      softWrap: true,
                      style: TextStyle(
                        color: MyColors.identity_head_desc_color,
                        fontSize:
                            ScreenUtil.instance.setSp(DimentSize.desc_size),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.instance.setWidth(20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: ScreenUtil.instance.setHeight(123),
              padding: EdgeInsets.only(
                right: ScreenUtil.instance.setWidth(40),
                left: ScreenUtil.instance.setWidth(40),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: ScreenUtil.instance.setWidth(212),
                    child: Text(
                      S.of(context).my_name,
                      style: TextStyle(
                        color: MyColors.fontColor,
                        fontSize:
                            ScreenUtil.instance.setSp(DimentSize.desc_size),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: MyColors.primary,
                      decoration: InputDecoration(
                        hintText: S.of(context).please_input,
                        hintStyle: TextStyle(
                          fontSize:
                              ScreenUtil.instance.setSp(DimentSize.desc_size),
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: MyColors.fontColor,
                        fontSize:
                            ScreenUtil.instance.setSp(DimentSize.desc_size),
                      ),
                    ),
                  )
                ],
              ),
            ),
            UnderLine(),
            Container(
              height: ScreenUtil.instance.setHeight(123),
              padding: EdgeInsets.only(
                right: ScreenUtil.instance.setWidth(40),
                left: ScreenUtil.instance.setWidth(40),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: ScreenUtil.instance.setWidth(212),
                    child: Text(
                      S.of(context).id_type,
                      style: TextStyle(
                        color: MyColors.fontColor,
                        fontSize:
                            ScreenUtil.instance.setSp(DimentSize.desc_size),
                      ),
                    ),
                  ),
//                  Flexible(
//                    child: TextField(
//
//                    ),
//                  )
                  Expanded(
                    child: TextField(
                      cursorColor: MyColors.primary,
                      decoration: InputDecoration(
                        hintText: S.of(context).please_input,
                        hintStyle: TextStyle(
                          fontSize:
                              ScreenUtil.instance.setSp(DimentSize.desc_size),
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: MyColors.fontColor,
                        fontSize:
                            ScreenUtil.instance.setSp(DimentSize.desc_size),
                      ),
                    ),
                  )
                ],
              ),
            ),
            UnderLine(),
            Container(
              height: ScreenUtil.instance.setHeight(123),
              padding: EdgeInsets.only(
                right: ScreenUtil.instance.setWidth(40),
                left: ScreenUtil.instance.setWidth(40),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: ScreenUtil.instance.setWidth(212),
                    child: Text(
                      S.of(context).id_number,
                      style: TextStyle(
                        color: MyColors.fontColor,
                        fontSize:
                            ScreenUtil.instance.setSp(DimentSize.desc_size),
                      ),
                    ),
                  ),
//                  Flexible(
//                    child: TextField(
//
//                    ),
//                  )
                  Expanded(
                    child: TextField(
                      cursorColor: MyColors.primary,
                      decoration: InputDecoration(
                        hintText: S.of(context).please_input,
                        hintStyle: TextStyle(
                          fontSize:
                              ScreenUtil.instance.setSp(DimentSize.desc_size),
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: MyColors.fontColor,
                        fontSize:
                            ScreenUtil.instance.setSp(DimentSize.desc_size),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(40),
                top: 0,
                right: ScreenUtil().setWidth(40),
                bottom: 0,
              ),
              height: ScreenUtil().setHeight(DimentSize.desc_size_small),
              color: MyColors.underLineColor,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                top: ScreenUtil.instance.setHeight(60),
                right: ScreenUtil.instance.setWidth(40),
                left: ScreenUtil.instance.setWidth(40),
              ),
              child: Text(
                S.of(context).identity_id_desc,
                style: TextStyle(
                  color: MyColors.fontColor,
                  fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Fluttertoast.showToast(msg: "去拍摄身份证照片");
              },
              splashColor: MyColors.transparency_white,
              highlightColor: MyColors.transparency_white,
              child: Image.asset(
                ImageUrl.getImageUrl("identity_id_photo.png"),
                width: ScreenUtil.instance.setHeight(282),
                height: ScreenUtil.instance.setHeight(282),
                alignment: Alignment.center,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              S.of(context).click_tack_photo,
              style: TextStyle(
                color: MyColors.fontColor,
                fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size_small),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                top: ScreenUtil.instance.setHeight(38),
                right: ScreenUtil.instance.setWidth(40),
                left: ScreenUtil.instance.setWidth(40),
                bottom: ScreenUtil.instance.setHeight(45),
              ),
              child: Text(
                S.of(context).hint_tack_face_photo,
                style: TextStyle(
                  color: MyColors.fontColor,
                  fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
                ),
              ),
            ),
            InkWell(
              onTap: () {
//                Fluttertoast.showToast(msg: "去拍摄身份证照片");
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          ImageUrl.getImageUrl("identity_tack_photo_guide.png"),
                          width: ScreenUtil.instance.setWidth(670),
                          height: ScreenUtil.instance.setHeight(467),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: ScreenUtil.instance.setHeight(20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.cancel,
                            color: MyColors.white,
                          ),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: ScreenUtil.instance.setHeight(50),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              splashColor: MyColors.transparency_white,
              highlightColor: MyColors.transparency_white,
              child: Image.asset(
                ImageUrl.getImageUrl("face_photo.png"),
                width: ScreenUtil.instance.setHeight(282),
                height: ScreenUtil.instance.setHeight(282),
                alignment: Alignment.center,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.instance.setHeight(10))),
            Text(
              S.of(context).click_tack_photo,
              style: TextStyle(
                color: MyColors.fontColor,
                fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size_small),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                top: ScreenUtil.instance.setHeight(83),
                right: ScreenUtil.instance.setWidth(40),
                left: ScreenUtil.instance.setWidth(40),
              ),
              child: Text(
                S.of(context).tips_identity_bottom,
                style: TextStyle(
                  color: MyColors.fontColor,
                  fontSize:
                      ScreenUtil.instance.setSp(DimentSize.desc_size_small),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.instance.setHeight(20))),
            SubmitButton(
              desc: S.of(context).inmadiate_apply,
              callback: () {
                Fluttertoast.showToast(msg: "立即申请");
              },
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.instance.setHeight(80))),
          ],
        ),
      ),
    );
  }

  @override
  bool isShowDialog() => false;

  @override
  Future<bool> showExitDialog<bool>() => null;
}
