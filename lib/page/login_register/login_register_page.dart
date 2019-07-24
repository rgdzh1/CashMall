import 'package:CashMall/cashmall.dart';

class LoginRegister extends StatelessWidget {
  void _textFieldChanged(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
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
          title: Strings.getString(Ids.login),
        ),
        backgroundColor: MyColors.white,
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(40))),
            Image.asset(
              ImageUrl.getImageUrl("logo.png"),
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
                  height: ScreenUtil().setHeight(100),
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
                  height: ScreenUtil().setHeight(100),
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
            SizedBox(
              width: ScreenUtil().setWidth(500),
              height: ScreenUtil().setHeight(100),
              child: RaisedButton(
                color: MyColors.primary,
                colorBrightness: Brightness.dark,
                splashColor: MyColors.white,
                child: Text(Strings.getString(Ids.login)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {},
              ),
            ),
            Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(10))),
            SizedBox(
              width: ScreenUtil().setWidth(500),
              height: ScreenUtil().setHeight(100),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Text(
                      "忘记密码?",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(DimentSize.desc_size),
                          color: MyColors.fontColor),
                    ),
                    onTap: () {
                      Fluttertoast.showToast(msg: "忘记密码");
                    },
                  ),
                  InkWell(
                    child: Text(
                      "注册",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(DimentSize.desc_size),
                          color: MyColors.fontColor),
                    ),
                    onTap: () {
                      Fluttertoast.showToast(msg: "注册");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//
