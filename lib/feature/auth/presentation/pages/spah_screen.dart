import 'dart:async';
import 'package:books/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SpahScreen extends StatefulWidget {
  const SpahScreen({super.key, });


  @override
  State<SpahScreen> createState() => _SpahScreenState();
}

class _SpahScreenState extends State<SpahScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () => context.go('/intermedaire'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.whiteBackground,
      alignment: Alignment.center,
      child: Center(
        child: Column(
          children: [
            Image.asset(
              "asset/image/spah.jpg",
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
