import 'package:flutter/material.dart';
import 'package:my_web_app/helpers/responsiveness.dart';
import 'package:my_web_app/widgets/large_screen.dart';
import 'package:my_web_app/widgets/side_menu.dart';
import 'package:my_web_app/widgets/small_screen.dart';

import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
