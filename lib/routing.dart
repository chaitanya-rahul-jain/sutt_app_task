import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sutt_app_task/screens/screen1.dart';
import 'package:sutt_app_task/screens/screen2.dart';
import 'package:sutt_app_task/screens/screen3.dart';
import 'package:sutt_app_task/screens/login_screen.dart';
import 'package:sutt_app_task/screens/bookmarks_screen.dart';

GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: <RouteBase>[
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const Screen1();
      },
    ),
    GoRoute(
      path: '/city',
      builder: (BuildContext context, GoRouterState state) {
        return const Screen3();
      },
    ),
    GoRoute(
      path: '/country',
      builder: (BuildContext context, GoRouterState state) {
        return const Screen2();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: '/bookmarks',
      builder: (BuildContext context, GoRouterState state) {
        return const BookmarksScreen();
      },
    ),
  ],
);
