import 'package:CashMall/cashmall.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        elevation: 1,
        centerTitle: true,
        title: TitleText(
          title: S.of(context).about_us_title,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: MyColors.fontColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 0,
          top: ScreenUtil().setHeight(30),
          right: 0,
          bottom: 0,
        ),
        width: double.infinity,
        height: double.infinity,
        color: MyColors.bg,
        alignment: Alignment.topCenter,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.only(
              left: ScreenUtil().setHeight(50),
              top: ScreenUtil().setHeight(50),
              right: ScreenUtil().setHeight(50),
              bottom: 0,
            ),
            constraints: BoxConstraints.tightFor(
              width: ScreenUtil().setWidth(670),
              height: ScreenUtil().setHeight(1013),
            ),
            child: Text(
              S.of(context).about_us_desc,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(26),
                color: MyColors.fontColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//DecoratedBox(
//decoration: BoxDecoration(
//color: MyColors.white,
//borderRadius: BorderRadius.circular(40),
//),
//child: Container(
//
//constraints: BoxConstraints.tightFor(
//width: ScreenUtil().setWidth(670),
//height: ScreenUtil().setHeight(919 - ScreenTools.bottomSafeHeight),
//),
//),
//)
