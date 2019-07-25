import 'package:CashMall/cashmall.dart';

class LoginPage extends StatelessWidget {
  void _textFieldChanged(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
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
          title: S.of(context).cash_mall,
        ),
        backgroundColor: MyColors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(40))),
              Image.asset(
                ImageUrl.getImageUrl("logo_bg_transparent.png"),
                width: ScreenUtil().setWidth(250),
                height: ScreenUtil().setHeight(250),
              ),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(30))),
              Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: MyColors.primary,
                ),
                child: Material(
                  color: MyColors.white,
                  child: SizedBox(
                    width: ScreenUtil().setWidth(500),
                    height: ScreenUtil().setHeight(160),
                    child: TextField(
                      maxLength: 13,
                      maxLines: 1,
                      cursorColor: MyColors.primary,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: MyColors.white,
                          filled: true,
                          labelText: '请输入手机号码 09xxxxxxxxxxx',
                          labelStyle: TextStyle(
                              fontSize:
                                  ScreenUtil().setSp(DimentSize.desc_size))),
                      onChanged: _textFieldChanged,
                      autofocus: false,
                    ),
                  ),
                ),
              ),
//          Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(20))),
              Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: MyColors.primary,
                ),
                child: Material(
                  color: MyColors.white,
                  child: SizedBox(
                    width: ScreenUtil().setWidth(500),
                    height: ScreenUtil().setHeight(160),
                    child: TextField(
                      maxLength: 5,
                      maxLines: 1,
                      cursorColor: MyColors.primary,
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: MyColors.white,
                          filled: true,
                          labelText: '请输入密码',
                          labelStyle: TextStyle(
                              fontSize:
                                  ScreenUtil().setSp(DimentSize.desc_size))),
                      onChanged: _textFieldChanged,
                      autofocus: false,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(20))),
              SubmitButton(desc: S.of(context).login, callback: () {}),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(20))),
              SizedBox(
                width: ScreenUtil().setWidth(500),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      highlightColor: MyColors.white,
                      splashColor: MyColors.white,
                      child: Container(
                        child: Text(
                          S.of(context).forget_password,
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(DimentSize.desc_size),
                            color: MyColors.fontColor,
                          ),
                        ),
                        padding: EdgeInsets.only(
                          left: 0,
                          top: 0,
                          right: ScreenUtil().setWidth(100),
                          bottom: ScreenUtil().setHeight(40),
                        ),
                      ),
                      onTap: () {
                        Application.router.navigateTo(context, RoutesPath.changeAccountPasswordPath);
                      },
                    ),
                    InkWell(
                      highlightColor: MyColors.white,
                      splashColor: MyColors.white,
                      child: Container(
                        child: Text(
                          S.of(context).register,
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(DimentSize.desc_size),
                            color: MyColors.fontColor,
                          ),
                        ),
                        padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(100),
                          top: 0,
                          right: 0,
                          bottom: ScreenUtil().setHeight(40),
                        ),
                      ),
                      onTap: () {
//                        Fluttertoast.showToast(msg: "注册");
                        Application.router.navigateTo(
                          context,
                          RoutesPath.registerCenterPath,
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//
