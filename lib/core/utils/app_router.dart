import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const ksplashView = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(path: ksplashView, builder: (context, state) => SplashView()),
      GoRoute(path: khomeView, builder: (context, state) => HomeView()),
    ],
  );

  // Define other routes as needed
}
