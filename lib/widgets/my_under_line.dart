import 'package:CashMall/cashmall.dart';

class UnderLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(40),
          top: 0,
          right: ScreenUtil().setWidth(40),
          bottom: 0),
      height: ScreenUtil().setHeight(1),
      width: ScreenUtil().setWidth(670),
      color: MyColors.underLineColor,
    );
  }
}
