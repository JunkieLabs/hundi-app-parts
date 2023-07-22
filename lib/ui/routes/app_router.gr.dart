// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    LabsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LabsPage(),
      );
    },
    OnboardRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardRouteArgs>(
          orElse: () => const OnboardRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OnboardPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };
}

/// generated route for
/// [LabsPage]
class LabsRoute extends PageRouteInfo<void> {
  const LabsRoute({List<PageRouteInfo>? children})
      : super(
          LabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LabsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardPage]
class OnboardRoute extends PageRouteInfo<OnboardRouteArgs> {
  OnboardRoute({
    Key? key,
    String title = 'OnboardPage',
    List<PageRouteInfo>? children,
  }) : super(
          OnboardRoute.name,
          args: OnboardRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const PageInfo<OnboardRouteArgs> page =
      PageInfo<OnboardRouteArgs>(name);
}

class OnboardRouteArgs {
  const OnboardRouteArgs({
    this.key,
    this.title = 'OnboardPage',
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'OnboardRouteArgs{key: $key, title: $title}';
  }
}
