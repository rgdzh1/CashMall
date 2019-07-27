import 'package:CashMall/cashmall.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const List<Map<String, dynamic>> moneyOrders = [
  {"title": "综合排序", "id": 0},
  {"title": "金额升序", "id": 1},
  {"title": "金额降序", "id": 2},
];

const List<Map<String, dynamic>> passOrder = [
  {"title": "通过率排序", "id": 0},
  {"title": "通过率升序", "id": 1},
  {"title": "通过率降序", "id": 2},
];
const List<Map<String, dynamic>> interestOrder = [
  {"title": "利率排序", "id": 0},
  {"title": "利率升序", "id": 1},
  {"title": "利率降序", "id": 2},
];

List<String> bannerUrlList = [
  "https://manhua.qpic.cn/operation/0/19_23_51_3fa71e4fd07f0f370af0465faa6ccdb5_1555689063579.jpg/0",
  "https://manhua.qpic.cn/operation/0/19_23_51_898a3baa00cba550d9fe64a372bee24a_1555689101098.jpg/0",
  "https://manhua.qpic.cn/operation/0/19_23_52_6234abed1062e3601cd639fd376760a3_1555689133306.jpg/0",
  "https://manhua.qpic.cn/operation/0/19_23_52_c0343c40a42861d776eb2b265015bef2_1555689169278.jpg/0",
  "https://manhua.qpic.cn/operation/0/19_23_53_8968d75fb1619aa30adfaf271a271642_1555689199834.jpg/0"
];

class _HomePageState extends State<HomePage> {
  ScrollController scrollController;
  GlobalKey globalKey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = new ScrollController();
    globalKey = new GlobalKey();
  }

  DropdownMenu buildDropdownMenu() {
    return new DropdownMenu(
        maxMenuHeight: kDropdownMenuItemHeight * 10,
        menus: [
          new DropdownMenuBuilder(
            builder: (BuildContext context) {
              return new DropdownListMenu(
                selectedIndex: 0,
                data: passOrder,
                itemBuilder: buildCheckItem,
              );
            },
            height: kDropdownMenuItemHeight * passOrder.length,
          ),
          new DropdownMenuBuilder(
            builder: (BuildContext context) {
              return new DropdownListMenu(
                selectedIndex: 0,
                data: moneyOrders,
                itemBuilder: buildCheckItem,
              );
            },
            height: kDropdownMenuItemHeight * moneyOrders.length,
          ),
          new DropdownMenuBuilder(
            builder: (BuildContext context) {
              return new DropdownListMenu(
                selectedIndex: 0,
                data: interestOrder,
                itemBuilder: buildCheckItem,
              );
            },
            height: kDropdownMenuItemHeight * moneyOrders.length,
          )
        ]);
  }

  //主题布局
  Widget buildInnerListHeaderDropdownMenu() {
    return new DefaultDropdownMenuController(
        onSelected: ({int menuIndex, int index, int subIndex, dynamic data}) {
          Fluttertoast.showToast(
              msg:
                  "menuIndex:$menuIndex index:$index subIndex:$subIndex data:$data");
        },
        child: new Stack(
          children: <Widget>[
            new CustomScrollView(
              controller: scrollController,
              slivers: <Widget>[
                new SliverList(
                  key: globalKey,
                  delegate: new SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return CashMallBanner(bannerUrlList);
                  }, childCount: 1),
                ),
                new SliverPersistentHeader(
                  delegate: new DropdownSliverChildBuilderDelegate(
                    builder: (BuildContext context) {
                      return new Container(
//                        padding: EdgeInsets.only(
////                          right: ScreenUtil.instance.setWidth(20),
////                          left: ScreenUtil.instance.setWidth(20),
////                        ),
                        color: MyColors.white,
                        child: buildDropdownHeader(onTap: this._onTapHead),
                      );
                    },
                  ),
                  pinned: true,
                  floating: true,
                ),
                new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return new Container(
                        height: ScreenUtil.instance.setHeight(393),
                        width: ScreenUtil.instance.setWidth(750),
                        color: MyColors.white,
                        child: getListItem(context),
                      );
                    },
                    childCount: 10,
                  ),
                ),
              ],
            ),
            new Padding(
              padding: new EdgeInsets.only(
                top: ScreenUtil.instance.setHeight(92),
              ),
              child: buildDropdownMenu(),
            )
          ],
        ));
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

  void _onTapHead(int index) {
    RenderObject renderObject = globalKey.currentContext.findRenderObject();
    DropdownMenuController controller =
        DefaultDropdownMenuController.of(globalKey.currentContext);
    scrollController
        .animateTo(scrollController.offset + renderObject.semanticBounds.height,
            duration: new Duration(milliseconds: 150), curve: Curves.ease)
        .whenComplete(() {
      controller.show(index);
    });
  }

  DropdownHeader buildDropdownHeader({DropdownMenuHeadTapCallback onTap}) {
    return new DropdownHeader(
      height: ScreenUtil.instance.setHeight(92),
      onTap: onTap,
      titles: [passOrder[0], moneyOrders[0], interestOrder[0]],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        elevation: 0,
        centerTitle: true,
        title: TitleText(
          title: S.of(context).cash_mall,
        ),
        automaticallyImplyLeading: false,
      ),
//      body: buildInnerListHeaderDropdownMenu(),
      body: buildInnerListHeaderDropdownMenu(),
    );
  }
}
