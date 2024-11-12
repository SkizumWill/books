import 'package:flutter/material.dart';

import 'core/utils/constant/colors.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "404 ERROR",
                style: TextStyle(
                    color: Color.fromARGB(255, 216, 209, 209), fontSize: 30),
              ),
              Text(
                "Page No Found",
                style: TextStyle(
                    color: TColors.error, fontSize: 18, fontFamily: "Roboto"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
