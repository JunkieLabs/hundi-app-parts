import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hundi_flutter_parts/ui/pages/index.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return <AutoRoute>[
      AutoRoute(
        initial: true,
        page: LabsRoute.page,
        // path: '/',
      ),

      AutoRoute(
        page: OnboardRoute.page,
        path: '/onboard',
      ),
      // CupertinoRoute(
      //   page: ExploreRoute.page,
      //   path: '/explore-tab',
      // ),
      // CupertinoRoute(
      //   page: GenreRoute.page,
      //   path: '/genre-tab',
      // ),
      // CupertinoRoute(
      //   page: DownloadsRoute.page,
      //   path: '/downloads-tab',
      // ),
      // CupertinoRoute(
      //   page: FavoritesRoute.page,
      //   path: '/favorites-tab',
      // ),
      // CupertinoRoute(
      //   page: LicensesRoute.page,
      //   path: '/licenses-tab',
      // ),
    ];
  }
}
