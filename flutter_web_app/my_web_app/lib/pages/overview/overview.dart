import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Overview",
      ),
    );
  }
}
