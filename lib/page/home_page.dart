import 'package:CashMall/cashmall.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<String> bannerUrlList = [
  "https://manhua.qpic.cn/operation/0/19_23_51_3fa71e4fd07f0f370af0465faa6ccdb5_1555689063579.jpg/0",
  "https://manhua.qpic.cn/operation/0/19_23_51_898a3baa00cba550d9fe64a372bee24a_1555689101098.jpg/0",
  "https://manhua.qpic.cn/operation/0/19_23_52_6234abed1062e3601cd639fd376760a3_1555689133306.jpg/0",
  "https://manhua.qpic.cn/operation/0/19_23_52_c0343c40a42861d776eb2b265015bef2_1555689169278.jpg/0",
  "https://manhua.qpic.cn/operation/0/19_23_53_8968d75fb1619aa30adfaf271a271642_1555689199834.jpg/0"
];

class _HomePageState extends State<HomePage> {
  ScrollController scrollController;
  int itemSize = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = new ScrollController();
  }

  Widget getListItem(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: ScreenUtil.instance.setHeight(40),
          left: ScreenUtil.instance.setWidth(40),
          child: Image.asset(
            ImageUrl.getImageUrl("adakita_logo.png"),
            height: ScreenUtil.instance.setHeight(124),
            width: ScreenUtil.instance.setWidth(124),
          ),
        ),
        Positioned(
          left: ScreenUtil.instance.setWidth(185),
          top: ScreenUtil.instance.setHeight(65),
          child: SizedBox(
            width: ScreenUtil.instance.setWidth(307),
            height: ScreenUtil.instance.setHeight(40),
            child: Text(
              "CCccccccccccccccc",
              style: TextStyle(
                color: MyColors.fontColor,
                fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
              ),
            ),
          ),
        ),
        Positioned(
          right: ScreenUtil.instance.setWidth(40),
          top: ScreenUtil.instance.setHeight(73),
          child: SubmitButton(
            desc: "提交",
            width: ScreenUtil.instance.setWidth(150),
            height: ScreenUtil.instance.setHeight(60),
            callback: () {
              Fluttertoast.showToast(msg: "这个按钮干啥的");
            },
          ),
        ),
        Positioned(
          left: ScreenUtil.instance.setWidth(185),
          top: ScreenUtil.instance.setHeight(98),
          child: SizedBox(
            width: ScreenUtil.instance.setWidth(200),
            height: ScreenUtil.instance.setHeight(30),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: ScreenUtil.instance.setSp(28),
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: ScreenUtil.instance.setSp(28),
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: ScreenUtil.instance.setSp(28),
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: ScreenUtil.instance.setSp(28),
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_half,
                  size: ScreenUtil.instance.setSp(28),
                  color: Colors.yellow,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil.instance.setWidth(4),
                  ),
                ),
                Text(
                  "4.9",
                  style: TextStyle(
                    color: MyColors.fontColor,
                    fontSize: ScreenUtil.instance
                        .setSp(DimentSize.desc_size_agin_small),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: ScreenUtil.instance.setWidth(40),
          top: ScreenUtil.instance.setHeight(185),
          child: Text(
            "额度范围(元)",
            style: TextStyle(
              color: MyColors.fontColor,
              fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
            ),
          ),
        ),
        Positioned(
          right: ScreenUtil.instance.setWidth(198),
          top: ScreenUtil.instance.setHeight(185),
          child: Text(
            "费率(%)",
            style: TextStyle(
              color: MyColors.fontColor,
              fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
            ),
          ),
        ),
        Positioned(
          left: ScreenUtil.instance.setWidth(40),
          top: ScreenUtil.instance.setHeight(236),
          child: Text(
            "1000-3000",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w700,
              fontSize: ScreenUtil.instance.setSp(DimentSize.title_size),
            ),
          ),
        ),
        Positioned(
          left: ScreenUtil.instance.setWidth(454),
          top: ScreenUtil.instance.setHeight(236),
          child: Text(
            "0.1",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w700,
              fontSize: ScreenUtil.instance.setSp(DimentSize.title_size),
            ),
          ),
        ),
        Positioned(
          left: ScreenUtil.instance.setWidth(374),
          top: ScreenUtil.instance.setHeight(232),
          child: Container(
            width: ScreenUtil.instance.setWidth(2),
            height: ScreenUtil.instance.setHeight(50),
            color: MyColors.bg,
          ),
        ),
        Positioned(
          left: ScreenUtil.instance.setWidth(40),
          right: ScreenUtil.instance.setWidth(40),
          top: ScreenUtil.instance.setHeight(304),
          child: Container(
            height: ScreenUtil.instance.setHeight(2),
            color: MyColors.bg,
          ),
        ),
        Positioned(
          left: ScreenUtil.instance.setWidth(40),
          right: ScreenUtil.instance.setWidth(40),
          top: ScreenUtil.instance.setHeight(333),
          child: Text(
            "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccc",
            style: TextStyle(
              color: MyColors.fontColor,
              fontSize:
              ScreenUtil.instance.setSp(DimentSize.desc_size_agin_small),
            ),
          ),
        ),
        Positioned(
          bottom: ScreenUtil.instance.setHeight(0),
          child: Container(
            width: ScreenUtil.instance.setWidth(750),
            height: ScreenUtil.instance.setHeight(20),
            color: MyColors.bg,
          ),
        ),
      ],
    );
  }

  bool disposed = false;

  Future<void> loadMore() async {
    await Future.delayed(Duration(seconds: 2));
    if (disposed) {
      return;
    }
    setState(
          () {
        itemSize += 1;
        Fluttertoast.showToast(msg: "你加载了新数据");
      },
    );
  }

  @override
  void dispose() {
    disposed = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        centerTitle: true,
        elevation: 0,
        title: TitleText(
          title: S
              .of(context)
              .cash_mall,
        ),
        automaticallyImplyLeading: false,
      ),
      body: new NotificationListener(
        onNotification: (ScrollNotification notification) {
          ///判断当前滑动位置是不是到达底部，触发加载更多回调
          if (notification is ScrollEndNotification) {
            if (scrollController.position.pixels > 0 &&
                scrollController.position.pixels ==
                    scrollController.position.maxScrollExtent) {
              loadMore();
            }
          }
          return false;
        },
        child: CustomScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: <Widget>[
            new SliverList(
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil.instance.setWidth(8),
                    ),
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      border: Border.all(width: 0.5, color: MyColors.bg),
                    ),
                    height: ScreenUtil.instance.setHeight(188),
                    child: CashMallBanner(bannerUrlList),
                  );
                },
                childCount: 1,
              ),
            ),
            new SliverPersistentHeader(
              delegate: new DropdownSliverChildBuilderDelegate(
                builder: (BuildContext context) {
                  return Container(
                    height: ScreenUtil.instance.setHeight(92),
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.instance.setWidth(20),
                    ),
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      border: Border.all(width: 0.5, color: MyColors.bg),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Komprehensif",
                              style: TextStyle(
                                fontSize: ScreenUtil.instance.setSp(
                                  DimentSize.desc_size,
                                ),
                                color: MyColors.primary,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: MyColors.primary,
                            ),
                          ],
                        ),
                        Text(
                          "Mudah lolos",
                          style: TextStyle(
                            fontSize: ScreenUtil.instance.setSp(
                              DimentSize.desc_size,
                            ),
                            color: MyColors.primary,
                          ),
                        ),
                        Text(
                          "Bunga rendah",
                          style: TextStyle(
                            fontSize: ScreenUtil.instance.setSp(
                              DimentSize.desc_size,
                            ),
                            color: MyColors.primary,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              pinned: true,
              floating: true,
            ),
            new SliverList(
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  if (index == itemSize - 1) {
                    return new Container(
                      margin: EdgeInsets.all(10),
                      child: Align(
                        child: CupertinoActivityIndicator(
                          radius: 14,
                        ),
                      ),
                    );
                  }
                  return new Container(
                    height: ScreenUtil.instance.setHeight(393),
                    width: ScreenUtil.instance.setWidth(750),
                    color: MyColors.white,
                    child: getListItem(context),
                  );
                },
                childCount: itemSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<int> popFilterMeu() async {
    return await showCupertinoModalPopup<int>(
        context: context,
        builder: (context) {
          var dialog = CupertinoActionSheet(
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context, 0);
                },
                child: Text(
                  '综合排序',
                  style: TextStyle(
                    fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
                    color: MyColors.primary,
                  ),
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Text(
                  '金额升序',
                  style: TextStyle(
                    fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
                    color: MyColors.primary,
                  ),
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Text(
                  '金额降序',
                  style: TextStyle(
                    fontSize: ScreenUtil.instance.setSp(DimentSize.desc_size),
                    color: MyColors.primary,
                  ),
                ),
              ),
            ],
          );
          return dialog;
        });
  }

}
