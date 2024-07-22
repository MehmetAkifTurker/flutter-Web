import 'package:flutter/material.dart';
import 'package:my_web_app/pages/live/live.dart';
import 'package:my_web_app/pages/overview/overview.dart';
import 'package:my_web_app/pages/tagIdentification/tag_Identification.dart';
import 'package:my_web_app/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverViewPage());
    case livePageRoute:
      return _getPageRoute(const LivePage());
    case tagIdentificationPageRoute:
      return _getPageRoute(const TagIdentificationPage());
    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
