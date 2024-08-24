import 'package:books/feature/auth/presentation/widget/apple_button.dart';
import 'package:books/feature/auth/presentation/widget/google_button.dart';
import 'package:books/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class BottomLoginPage extends StatelessWidget {
  const BottomLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Divider(),
              ),
              SizedBox(
                width: 5,
              ),
              Text("OR"),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Divider(),
              ),
            ]),
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
              
              onPressed: () {},
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
