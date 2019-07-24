import 'cashmall.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// flutter boost 入口
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FlutterBoost.singleton.registerPageBuilders({
      NativeKey.MainKey: (pageName, parames, _) => MainContainer(),
      NativeKey.SecondKey: (pageName, parames, _) => ScondePage(),
    });
    FlutterBoost.handleOnStartPage();
    //创建fluro
    var router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

//  Locale _locale;
//
//  void _loadLocale() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    Map<String, dynamic> languageStr =
//        prefs.getString(SpKey.keyLanguage) as Map<String, dynamic>;
//    LanguageModel languageModel = LanguageModel.fromJson(languageStr);
//    if (languageModel != null) {
//      _locale =
//          new Locale(languageModel.languageCode, languageModel.countryCode);
//    } else {
//      _locale = null;
//    }
//  }

  @override
  Widget build(BuildContext context) {
//    setLocalizedSimpleValues(localizedSimpleValues);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: MyColors.primary
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      builder: FlutterBoost.init(),
      localeResolutionCallback:
          (Locale locale, Iterable<Locale> supportedLocales) {
        //初始化Strings 类
        Strings.initStrings(locale);
      },
//      localizationsDelegates: [
//        GlobalMaterialLocalizations.delegate,
//        GlobalWidgetsLocalizations.delegate,
//        CustomLocalizations.delegate //设置本地化代理
//      ],
//      supportedLocales: CustomLocalizations.supportedLocales,
    );
  }
}

//class InitWidght extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//
//    return Container(
//      child: Text(
//        "test",
//        style: TextStyle(fontSize: ScreenUtil().setSp(20)),
//      ),
//    );
//  }
//}
