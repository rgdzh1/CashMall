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
    router.define(
      RoutesPath.secondPath,
      handler: secondHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.threePath,
      handler: threeHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.fourPath,
      handler: fourHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.homePath,
      handler: homeHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.AboutUsPath,
      handler: aboutUsHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.loginPath,
      handler: loginHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.registerCenterPath,
      handler: registerHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.registerPasswordPath,
      handler: registerPasswordHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.changeAccountPasswordPath,
      handler: changeAccountPasswordHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.changeAccountPasswordCodePath,
      handler: changePasswordCodeHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.changePasswordPath,
      handler: changePasswordHandler,
      transitionType: TransitionType.cupertino,
    );
    router.define(
      RoutesPath.identityInfoPath,
      handler: identityInfoHandler,
      transitionType: TransitionType.cupertino,
    );
  }
}
