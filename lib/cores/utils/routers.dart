import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:systree/features/authentication/presentation/view/login_page.dart';
import 'package:systree/features/authentication/presentation/view/register_page.dart';
import 'package:systree/features/home_page/presentation/view/home_page.dart';

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
      GoRoute(
        path: loginPage,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: registerPage,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterPage();
        },
      ),
      GoRoute(
        path: homePage,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      )


    ],
  );

}