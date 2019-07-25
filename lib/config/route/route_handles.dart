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

var loginHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
    return LoginPage();
  },
);

var registerHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
    return RegisterCenterPage();
  },
);
var registerPasswordHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
    return RegisterPasswordPage();
  },
);
var changeAccountPasswordHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
    return ChangeAccountPasswordPage();
  },
);
var changePasswordCodeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
    return ChangeAccountPasswordCodePage();
  },
);
var changePasswordHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
    return ChangePasswordPage();
  },
);