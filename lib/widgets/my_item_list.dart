import 'package:CashMall/cashmall.dart';

class MyItemList extends StatelessWidget {
  String name;

  String imageUrl;

  GestureTapCallback callback;

  MyItemList({this.name, this.imageUrl, this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: ScreenUtil.instance.setWidth(670),
        height: ScreenUtil.instance.setHeight(122),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.instance.setWidth(40),
              ),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(DimentSize.desc_size),
                  color: MyColors.fontColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.instance.setWidth(40),
              ),
              child: Image.asset(
                imageUrl,
                height: ScreenUtil().setHeight(11),
                width: ScreenUtil().setWidth(20),
              ),
            )
          ],
        ),
      ),
      onTap: callback,
    );
  }
}
