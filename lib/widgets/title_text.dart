import 'package:CashMall/cashmall.dart';

class TitleText extends StatelessWidget {
  String title;

  TitleText({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.w900,
          color: MyColors.fontColor,
          fontSize: ScreenUtil().setSp(DimentSize.title_size),
          decoration: TextDecoration.underline,
          decorationColor: MyColors.white),
    );
  }
}
