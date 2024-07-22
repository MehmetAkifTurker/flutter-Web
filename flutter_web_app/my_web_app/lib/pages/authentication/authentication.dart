import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "authentication",
      ),
    );
  }
}
