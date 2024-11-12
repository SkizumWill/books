import 'package:books/error_page.dart';
import 'package:books/presentation/pages/confirmation_screen_code.dart';
import 'package:books/presentation/pages/register_screen.dart';
import 'package:books/presentation/pages/spah_screen.dart';
import 'package:books/presentation/routes/home_router.dart';
import 'package:go_router/go_router.dart';

import 'presentation/pages/login_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SpahScreen(),
      routes: [
        GoRoute(
          path: 'intermedaire',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: 'register',
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: 'confirmation',
          builder: (context, state) => const ConfirmationScreenCode(),
        ),
      ],
    ),
    homeRoute,
  ],
);
