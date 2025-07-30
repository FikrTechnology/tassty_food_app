import 'package:go_router/go_router.dart';
import 'package:tassty_food_app/presentation/views/pages.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingSplashscreenPage(),
      ),
      GoRoute(
        path: '/educational',
        builder: (context, state) => const OnboardingEducationalPage(),
      ),
    ]
  );
}
