import 'package:books/presentation/widget/auth/apple_button.dart';
import 'package:books/presentation/widget/google_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/constant/colors.dart';
import 'separation_bar.dart';

class BottomRegister extends StatelessWidget {
  const BottomRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SeparationBar(),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GoogleButton(),
          AppleButton(),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Have you a Account?",
              style: TextStyle(
                color: TColors.textColor,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text: "Login",
              style: TextStyle(
                  color: TColors.buttonColors,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.go('/intermedaire');
                },
            ),
          ],
        ),
      ),
    ]);
  }
}
