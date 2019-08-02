import 'package:CashMall/cashmall.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends BaseState<ChangePasswordPage> {
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
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(10))),
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
                      obscureText: true,
                      cursorColor: MyColors.primary,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: MyColors.white,
                        filled: true,
                        labelText: S.of(context).hint_input_password,
                        labelStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(DimentSize.desc_size),
                        ),
                      ),
                      onChanged: (password) {},
                      autofocus: false,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(ScreenUtil().setHeight(20))),
              SubmitButton(
                desc: S.of(context).confirm,
                callback: () {},
              )
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
