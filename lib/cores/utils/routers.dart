import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboarding/presentation/view/onboarding.dart';
import '../../features/splash/presentation/view/splash.dart';



class RoutersCLass{

  static String splashPage = '/';
  static String onBoardingPage = '/onBoarding';
  static String homePage = '/homePage';
  static String loginPage = '/loginPage';
  static String registerPage = '/registerPage';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashPage,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        },
      ),

      GoRoute(
        path: onBoardingPage,
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingPage();
        },
      ),

    ],
  );

}