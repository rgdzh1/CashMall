import 'package:CashMall/cashmall.dart';

var homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return FirstPage();
  },
);

var secondHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ScondePage();
  },
);

var threeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ThreePage();
  },
);

var fourHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
  return FourPage();
});

var aboutUsHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
  return AboutUs();
});

var loginRegisterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
  return LoginRegister();
});
