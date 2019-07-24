import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'route_handles.dart';
import 'route_paths.dart';

class Routes {
  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> parames) {
        print("Router Not Found Path");
      },
    );
    router.define(RoutesPath.homePath, handler: homeHandler);
    router.define(RoutesPath.secondPath, handler: secondHandler);
    router.define(RoutesPath.threePath, handler: threeHandler);
    router.define(RoutesPath.fourPath, handler: fourHandler);
    router.define(RoutesPath.AboutUsPath, handler: aboutUsHandler);
    router.define(RoutesPath.loginRegisterPath, handler: loginRegisterHandler);
  }
}
