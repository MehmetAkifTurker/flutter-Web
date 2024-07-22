import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_web_app/constants/style.dart';
import 'package:my_web_app/widgets/custom_text.dart';
import 'package:my_web_app/controllers/menu_controller.dart' as my_menu;

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function() onTap;

  const SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? my_menu.MenuController.instance.onHover(itemName)
            : my_menu.MenuController.instance.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: my_menu.MenuController.instance.isHovering(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Visibility(
                visible: my_menu.MenuController.instance.isHovering(itemName) ||
                    my_menu.MenuController.instance.isActive(itemName),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: dark,
                ),
              ),
              SizedBox(width: 16), // Kenarlık için boşluk bırakın
              Padding(
                padding: const EdgeInsets.all(16),
                child: my_menu.MenuController.instance.returnIconFor(itemName),
              ),
              if (!my_menu.MenuController.instance.isActive(itemName))
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: my_menu.MenuController.instance.isHovering(itemName)
                        ? dark
                        : lightGrey,
                  ),
                )
              else
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: dark,
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
