import 'package:CashMall/cashmall.dart';
import 'package:flutter/cupertino.dart';

class CashMallBanner extends StatefulWidget {
  final List<String> imgList;

  CashMallBanner(this.imgList);

  @override
  CashMallBannerState createState() => CashMallBannerState();
}

class CashMallBannerState extends State<CashMallBanner>
    with AutomaticKeepAliveClientMixin {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (this.widget.imgList.length == 0) {
      return SizedBox();
    }
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(msg: "点击");
      },
      child: CarouselSlider(
        viewportFraction: 1.0,
//                aspectRatio: 2.0,
        autoPlay: true,
        pauseAutoPlayOnTouch: Duration(milliseconds: 400),
        enlargeCenterPage: false,
        items: map<Widget>(
          this.widget.imgList,
          (index, url) {
            return new Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                CarouselSlider(
                  viewportFraction: 1.0,
                  aspectRatio:4,
                  autoPlay: true,
                  pauseAutoPlayOnTouch: Duration(milliseconds: 400),
                  enlargeCenterPage: false,
                  items: map<Widget>(
                    this.widget.imgList,
                    (index, url) {
                     return ClipRRect(
                        child: CachedNetworkImage(
                          width: ScreenUtil.instance.setWidth(750),
                          fit: BoxFit.cover,
                          imageUrl: url,
                          placeholder: (context, url) =>
                              CupertinoActivityIndicator(),
                          errorWidget: (context, url, error) => new Icon(
                            Icons.broken_image,
                            color: MyColors.primary,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(ScreenUtil.instance.setSp(30)),
                      );
                    },
                  ),
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                Positioned(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(
                      this.widget.imgList,
                      (index, url) {
                        if (_current == index) {
                          return Container(
                            width: 12.0,
                            height: 6.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: MyColors.primary,
                            ),
                          );
                        } else {
                          return Container(
                            width: 6.0,
                            height: 6.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffe1e1e1),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
