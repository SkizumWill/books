import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SpahScreen extends StatefulWidget {
  const SpahScreen({
    super.key,
  });

  @override
  State<SpahScreen> createState() => _SpahScreenState();
}

class _SpahScreenState extends State<SpahScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () => context.go('/intermedaire'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(
            "asset/image/books_logo.jpg",
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
