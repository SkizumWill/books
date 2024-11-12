import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constant/colors.dart';
import 'chat_page.dart';
import 'home_page.dart';

class BottomHomePage extends StatefulWidget {
  const BottomHomePage({super.key});

  @override
  State<BottomHomePage> createState() => _BottomHomePageState();
}

class _BottomHomePageState extends State<BottomHomePage> {
  int _page = 0;
  final pages = [
    HomePage(),
    const ChatPage(),
    Container(
      color: Colors.green,
    ),
    Container(color: Colors.red),
    Container(
      color: Colors.yellow,
    )
  ];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: TColors.buttonColors,
          backgroundColor: TColors.primaryColors,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: pages[_page]);
  }
}
