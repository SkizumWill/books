import 'package:flutter/material.dart';

class HomeUserPage extends StatelessWidget {
  const HomeUserPage({super.key, String? id});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      
      child: Scaffold(
        body: Column(
          children: [Text('userNAME ')],
        ),
        //TODO:list all the function and the element that with dispose on this screen
        //
      ),
    );
  }
}
