import 'package:CashMall/cashmall.dart';

class SubmitButton extends StatelessWidget {
  String desc;
  VoidCallback callback;
  double width;
  double height;
  SubmitButton({this.desc, this.callback, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    width ??= ScreenUtil.instance.setWidth(500);
    height ??= ScreenUtil.instance.setWidth(100);
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        color: MyColors.primary,
        colorBrightness: Brightness.dark,
        splashColor: MyColors.transparency_white,
        child: Text(
          desc,
          style: TextStyle(
            color: MyColors.white,
            fontSize: ScreenUtil().setSp(DimentSize.title_size),
          ),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        onPressed: callback,
      ),
    ); //登录按钮
  }
}
