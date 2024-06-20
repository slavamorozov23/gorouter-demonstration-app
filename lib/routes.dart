import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'auth_state.dart';
import 'screens/error_screen.dart';
import 'screens/home_screen.dart';
import 'screens/page1_screen.dart';
import 'screens/page2_screen.dart';
import 'screens/user_screen.dart';
import 'screens/users_screen.dart';
import 'screens/details_screen.dart';
import 'screens/alternative_home_screen.dart';
import 'screens/login_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<Page1Route>(
      path: 'page1',
    ),
    TypedGoRoute<Page2Route>(
      path: 'page2',
    ),
    TypedGoRoute<UsersRoute>(
      path: 'users',
    ),
    TypedGoRoute<UserRoute>(
      path: 'users/:userId',
    ),
    TypedGoRoute<DetailsRoute>(
      path: 'details',
    ),
    TypedGoRoute<AlternativeHomeRoute>(
      path: 'alternative_home',
    ),
    TypedGoRoute<LoginRoute>(
      path: 'login',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class Page1Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Page1Screen();
  }
}

class Page2Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Page2Screen();
  }
}

class UsersRoute extends GoRouteData {
  final String? filter;

  UsersRoute({this.filter});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UsersScreen(filter: filter);
  }
}

class UserRoute extends GoRouteData {
  final String userId;

  UserRoute({required this.userId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserScreen(id: userId);
  }
}

class DetailsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DetailsScreen();
  }
}

class AlternativeHomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AlternativeHomeScreen();
  }
}

class LoginRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

class ErrorRoute extends GoRouteData {
  final Exception error;

  ErrorRoute({required this.error});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ErrorScreen(error: error);
  }
}

final router = GoRouter(
  routes: $appRoutes,
  redirect: (BuildContext context, GoRouterState state) {
    final authState = Provider.of<AuthState>(context, listen: false);
    final isLoggingIn = state.uri.toString() == '/login';
    final isLoggedIn = authState.isLoggedIn;

    if (!isLoggedIn && !isLoggingIn) {
      return LoginRoute().location;
    }
    if (isLoggedIn && isLoggingIn) {
      return HomeRoute().location;
    }
    return null;
  },
  errorBuilder: (context, state) {
    return ErrorScreen(error: state.error!);
  },
);
