import 'package:CashMall/cashmall.dart';

class ChangeAccountPasswordCodePage extends StatelessWidget {
  staticRectangle(BuildContext context) {
    double count = 6;
    double setWidth = ScreenUtil.instance.setWidth(500);
    double spacePadding = ScreenUtil.instance.setWidth(10);
    double totalSize = (setWidth - 2 * spacePadding) / count;
    double codeNormalSize = totalSize - ScreenUtil.instance.setWidth(20); //调整间距
    return CodeInputBuilders.rectangle(
      totalSize: Size(totalSize, totalSize),
      emptySize: Size(codeNormalSize, codeNormalSize),
      filledSize: Size(codeNormalSize, codeNormalSize),
      borderRadius: BorderRadius.zero,
      border: Border.all(color: Theme.of(context).primaryColor, width: 1.0),
      color: Colors.transparent,
      textStyle: TextStyle(
        color: MyColors.fontColor,
        fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  int count = 60;
  String getCodeDesc;
  var timerSmsCode;

  @override
  Widget build(BuildContext context) {
    getCodeDesc = S.of(context).get_sms_code;
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
          title: S.of(context).change_password,
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
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(50))),
              ChangeNotifierProvider<BoolProvider>.value(
                value: BoolProvider(),
                child: Consumer(
                  builder:
                      (BuildContext context, BoolProvider boolProvider, _) {
                    return SubmitButton(
                      desc: getCodeDesc,
                      width: ScreenUtil.instance.setWidth(250),
                      height: ScreenUtil.instance.setHeight(80),
                      callback: () {
                        if (!boolProvider.defaulStat) {
                          timerSmsCode = Timer.periodic(
                            Duration(seconds: 1),
                            (Timer timer) {
                              count--;
                              getCodeDesc = count.toString() + "秒";
                              boolProvider.notifyListeners();
                              if (count == 0) {
                                count = 60;
                                getCodeDesc =
                                    S.of(context).get_sms_code;
                                boolProvider.setStat(false);
                                timer.cancel();
                              }
                            },
                          );
                          boolProvider.setStat(true);
                        }
                      },
                    );
                  },
                ),
              ),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(20))),
              VerCodeInput(
                ctx: context,
                length: 6,
                keyboardType: TextInputType.number,
                builder: staticRectangle(context),
                onChanged: (value) {
                  ///print(value ?? "");
                  Fluttertoast.showToast(msg: value.toString());
                },
                ///输入完成时
                onFilled: (value) {
                  Fluttertoast.showToast(msg: "输入完成" + value.toString());
                  ///print('Your input is $value.');
                },
              ),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(20))),
              SubmitButton(
                desc: S.of(context).next,
                callback: () {
                  Application.router.navigateTo(
                    context,
                    RoutesPath.changePasswordPath,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
