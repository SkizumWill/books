import 'package:go_router/go_router.dart';

import '../pages/home/bottom_home_page.dart';

final homeRoute = GoRoute(
    path: "/home",
    builder: (context, state) => const BottomHomePage(),
    routes: const []);
