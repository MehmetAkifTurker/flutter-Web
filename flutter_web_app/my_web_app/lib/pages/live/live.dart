import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/custom_text.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Live",
      ),
    );
  }
}
