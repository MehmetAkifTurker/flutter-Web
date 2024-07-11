import 'package:flutter/material.dart';
import 'package:my_web_app/helpers/responsiveness.dart';
import 'package:my_web_app/widgets/large_screen.dart';
import 'package:my_web_app/widgets/small_screen.dart';
import 'package:my_web_app/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
