import 'package:flutter/material.dart';
import 'package:my_web_app/constants/controllers.dart';
import 'package:my_web_app/routing/router.dart';
import 'package:my_web_app/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overViewPageRoute,
    );
