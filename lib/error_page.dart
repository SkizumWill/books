import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          Text(
            "404 ERROR",
            style: TextStyle(
                color: Color.fromARGB(255, 216, 209, 209), fontSize: 25),
          ),
          Text("Page No Found")
        ],
      ),
    );
  }
}
