import 'package:CashMall/cashmall.dart';

class RegisterCenterPage extends StatefulWidget {
  @override
  _RegisterCenterPageState createState() => _RegisterCenterPageState();
}

class _RegisterCenterPageState extends BaseState<RegisterCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: MyColors.fontColor,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: TitleText(
          title: S.of(context).register,
        ),
        backgroundColor: MyColors.white,
      ),
      body: Container(
        color: MyColors.white,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(40))),
              Image.asset(
                //图标
                ImageUrl.getImageUrl("logo_bg_transparent.png"),
                width: ScreenUtil().setWidth(250),
                height: ScreenUtil().setHeight(250),
              ),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(40))),
              SubmitButton(
                desc: S.of(context).btn_facebook_sms,
                callback: () {
//                  Application.router.navigateTo(
//                    context,
//                    RoutesPath.registerPasswordPath,
//                  );
                  FlutterBoost.singleton.openPage(NativePath.FACEBOOK_PATH, {}, animated: true);//打开Facebook短信获取
                },
              ),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(40))),
              SizedBox(
                //试试其他方式
                width: ScreenUtil().setWidth(500),
                height: ScreenUtil().setHeight(100),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: ScreenUtil().setWidth(100),
                      height: ScreenUtil().setHeight(0.5),
                      color: MyColors.fontColor,
                    ),
                    Text(
                      S.of(context).desc_try_other_way,
                      style: TextStyle(
                          color: MyColors.fontColor,
                          fontSize: ScreenUtil().setSp(DimentSize.desc_size)),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(100),
                      height: ScreenUtil().setHeight(0.5),
                      color: MyColors.fontColor,
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(10))),
              SizedBox(
                //去Facebook 获取短信
                width: ScreenUtil().setWidth(250),
                height: ScreenUtil().setHeight(100),
                child: RaisedButton(
                  color: MyColors.white,
                  colorBrightness: Brightness.dark,
                  splashColor: MyColors.transparency_white,
                  elevation: 0.8,
                  child: Text(
                    S.of(context).try_way,
                    style: TextStyle(
                        color: MyColors.fontColor,
                        fontSize: ScreenUtil().setSp(DimentSize.title_size)),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: MyColors.fontColor)),
                  onPressed: () {
                    Fluttertoast.showToast(msg: "去短信通道注册");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool isShowDialog() => false;

  @override
  Future<T> showExitDialog<T>() => null;
}
