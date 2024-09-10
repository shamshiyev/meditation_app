import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/features/home/view/home_screen.dart';

import '../features/discover/discover_screen.dart';
import '../features/main/main_screen.dart';
import '../features/premium/premium_screen.dart';
import '../features/profile/profile_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (
          context,
          state,
          navigationShell,
        ) {
          return CupertinoPage(
            key: state.pageKey,
            child: MainScreen(child: navigationShell),
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => const HomeScreen(),
              )
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/discover',
                builder: (context, state) => const DiscoverScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/premium',
                builder: (context, state) => const PremiumScreen(),
              ),
            ],
          ),
        ],
      )
    ],
  );
}
