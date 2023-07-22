import 'package:go_router/go_router.dart';
import 'package:hundi_flutter_parts/ui/pages/index.dart';

class AppRouter {
// GoRouter configuration

  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => LabsPage(),
      ),
      GoRoute(
        path: '/onboard',
        builder: (context, state) => OnboardPage(),
      ),
    ],
  );

  
  static GoRouter get router => _router;
}
