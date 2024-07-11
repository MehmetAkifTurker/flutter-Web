import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_web_app/constants/controllers.dart';
import 'package:my_web_app/constants/style.dart';
import 'package:my_web_app/helpers/responsiveness.dart';
import 'package:my_web_app/routing/routes.dart';
import 'package:my_web_app/widgets/custom_text.dart';
import 'package:my_web_app/widgets/side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/thy_logo.png"),
                    ),
                    const Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == AndroidOverscrollIndicator) {
                        Get.offAllNamed(AuthenticationPageRoute);
                      }
                      if (!menuController.isActive(item.name)) {
                        menuController.changeActiveitemTo(item.name);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}

class OverviewPageDisplayName {}
