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
      NativeKey.MainKey: (pageName, parames, uniqueid ) => MainContainer(parames,uniqueid),
    });
    FlutterBoost.handleOnStartPage();
    //创建fluro
    var router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: MyColors.primary),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      builder: FlutterBoost.init(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}