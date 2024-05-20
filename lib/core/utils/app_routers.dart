import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/home/presentation/views/book_view_detials.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetialsView = '/bookDetialsView'; 

  static final router = GoRouter(
    // each time  we create new view, then we need to add the route of that view here. //
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
       GoRoute(
        path: kBookDetialsView,
        builder: (context, state) => const BookViewDetials(),
      ),
    ],
  );
}
