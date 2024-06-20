import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/page1_screen.dart';
import 'screens/page2_screen.dart';
import 'screens/user_screen.dart';
import 'screens/users_screen.dart';
import 'screens/details_screen.dart';
import 'screens/alternative_home_screen.dart';
import 'screens/login_screen.dart';
import 'auth_state.dart';

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business), label: 'Business'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school), label: 'School'),
            ],
            onTap: (index) {
              switch (index) {
                case 0:
                  context.go('/');
                  break;
                case 1:
                  context.go('/page1');
                  break;
                case 2:
                  context.go('/users');
                  break;
              }
            },
          ),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/page1',
          builder: (context, state) => const Page1Screen(),
        ),
        GoRoute(
          path: '/page2',
          builder: (context, state) => const Page2Screen(),
        ),
        GoRoute(
          path: '/users/:userId',
          builder: (context, state) =>
              UserScreen(id: state.pathParameters['userId']),
        ),
        GoRoute(
          path: '/users',
          builder: (context, state) =>
              UsersScreen(filter: state.uri.queryParameters['filter']),
        ),
        GoRoute(
          path: '/details',
          builder: (context, state) => const DetailsScreen(),
        ),
        GoRoute(
          path: '/alternative_home',
          builder: (context, state) => const AlternativeHomeScreen(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
      ],
    ),
  ],
  redirect: (BuildContext context, GoRouterState state) {
    final authState = Provider.of<AuthState>(context, listen: false);
    final isLoggingIn = state.uri.toString() == '/login';
    final isLoggedIn = authState.isLoggedIn;

    if (!isLoggedIn && !isLoggingIn) {
      return '/login';
    }
    if (isLoggedIn && isLoggingIn) {
      return '/';
    }
    return null;
  },
);
