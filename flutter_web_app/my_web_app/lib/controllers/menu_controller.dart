import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:my_web_app/constants/style.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = "Overview".obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case "Overview":
        return _customIcon(Icons.trending_up, itemName);
      case "Live":
        return _customIcon(Icons.assignment, itemName);
      case "Tag Identification":
        return _customIcon(Icons.speaker_phone, itemName);
      case "Authentication":
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    } else {
      return Icon(
        icon,
        color: isHovering(itemName) ? dark : lightGrey,
      );
    }
  }
}
