import 'package:books/error_page.dart';
import 'package:books/feature/auth/presentation/pages/spah_screen.dart';
import 'package:go_router/go_router.dart';
import 'feature/auth/presentation/pages/intermedaire_screen.dart';
import 'feature/management_books/presentation/pages/details_books_page.dart';
import 'feature/management_books/presentation/pages/home_user_page.dart';
import 'feature/management_books/presentation/pages/login_page.dart';

final router = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
      routes: [
        GoRoute(
            path: "details",
            builder: (context, state) => const DetailsBooksPage())
      ],
    ),
    GoRoute(
      path: '/home/:userId',
      builder: (context, state) =>
          HomeUserPage(id: state.pathParameters['userId']),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const SpahScreen(),
      routes: [
        GoRoute(
          path: 'intermedaire',
          builder: (context, state) => const IntermedaireScreen(),
        )
      ],
    ),
  ],
);
