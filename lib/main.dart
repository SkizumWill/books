import 'package:books/router.dart';
import 'package:books/utils/widget/input_decoration_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: inputDecorationTheme,
        useMaterial3: true,
      ),
    );
  }
}
