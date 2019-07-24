import 'package:CashMall/cashmall.dart';

class UserLogoPhone extends StatelessWidget {
  String imageUrl;
  String phoneNum;
  GestureTapCallback callback;

  UserLogoPhone({this.imageUrl, this.phoneNum, this.callback});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ScreenUtil().setHeight(240),
      child: InkWell(
        onTap: callback,
        child: Column(
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
//                        gradient: LinearGradient(
//                            colors: [Colors.red, Colors.orange[700]]), //背景渐变
                borderRadius:
                BorderRadius.circular(ScreenUtil().setWidth(73)), //3像素圆角
                boxShadow: [
                  //阴影
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0)
                ],
              ),
              child: CircleAvatar(
                radius: ScreenUtil().setWidth(73),
                backgroundColor: MyColors.white,
                child: Image.asset(
                  imageUrl,
                  width: ScreenUtil().setWidth(100),
                  height: ScreenUtil().setHeight(100),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(18),
            ),
            Text(
              phoneNum,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(32),
                color: MyColors.fontColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
