// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'page1',
          factory: $Page1RouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'page2',
          factory: $Page2RouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'users',
          factory: $UsersRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'users/:userId',
          factory: $UserRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'details',
          factory: $DetailsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'alternative_home',
          factory: $AlternativeHomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'login',
          factory: $LoginRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Page1RouteExtension on Page1Route {
  static Page1Route _fromState(GoRouterState state) => Page1Route();

  String get location => GoRouteData.$location(
        '/page1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Page2RouteExtension on Page2Route {
  static Page2Route _fromState(GoRouterState state) => Page2Route();

  String get location => GoRouteData.$location(
        '/page2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UsersRouteExtension on UsersRoute {
  static UsersRoute _fromState(GoRouterState state) => UsersRoute(
        filter: state.uri.queryParameters['filter'],
      );

  String get location => GoRouteData.$location(
        '/users',
        queryParams: {
          if (filter != null) 'filter': filter,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserRouteExtension on UserRoute {
  static UserRoute _fromState(GoRouterState state) => UserRoute(
        userId: state.pathParameters['userId']!,
      );

  String get location => GoRouteData.$location(
        '/users/${Uri.encodeComponent(userId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsRouteExtension on DetailsRoute {
  static DetailsRoute _fromState(GoRouterState state) => DetailsRoute();

  String get location => GoRouteData.$location(
        '/details',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AlternativeHomeRouteExtension on AlternativeHomeRoute {
  static AlternativeHomeRoute _fromState(GoRouterState state) =>
      AlternativeHomeRoute();

  String get location => GoRouteData.$location(
        '/alternative_home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
