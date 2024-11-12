import 'package:books/presentation/widget/auth/apple_button.dart';
import 'package:books/presentation/widget/google_button.dart';
import 'package:books/presentation/widget/separation_bar.dart';
import 'package:books/core/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomLoginPage extends StatelessWidget {
  const BottomLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SeparationBar(),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GoogleButton(),
            AppleButton(),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don,t have a Account?",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
            TextButton(
              onPressed: () => context.go('/register'),
              child: Text(
                "Register",
                style: TextStyle(
                  color: TColors.buttonColors,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Roboto",
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
