import 'package:CashMall/cashmall.dart';

class MyItemList extends StatelessWidget {
  String name;

  String imageUrl;

  GestureTapCallback callback;

  MyItemList({this.name, this.imageUrl, this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: ScreenUtil().setHeight(40),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: ScreenUtil().setWidth(80),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(124),
                height: ScreenUtil().setHeight(42),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(DimentSize.desc_size),
                    color: MyColors.fontColor,
                  ),
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(434),
              ),
              Image.asset(
                imageUrl,
                height: ScreenUtil().setHeight(11),
                width: ScreenUtil().setWidth(20),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(80),
              ),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(40),
          ),
        ],
      ),
      onTap: callback,
    );
  }
}
