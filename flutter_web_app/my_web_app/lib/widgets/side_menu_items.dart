import 'package:flutter/material.dart';
import 'package:my_web_app/helpers/responsiveness.dart';
import 'package:my_web_app/widgets/horizontal_menu_items.dart';
import 'package:my_web_app/widgets/vertical_menu_items.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VertticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
