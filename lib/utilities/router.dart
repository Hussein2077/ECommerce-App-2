import 'package:flutter/cupertino.dart';
import 'package:graduation_project/on_boarding/on_boarding.dart';
import 'package:graduation_project/utilities/routes.dart';

import '../views/pages/auth_page.dart';
import '../views/pages/bottom_navbar.dart';
import '../views/pages/landing_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.onBoardingRoute:
      return CupertinoPageRoute(
        builder: (_) => const OnBoarding(),
        settings: settings,
      );
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const AuthPage(),
        settings: settings,
      );
    case AppRoutes.bottomNavBarRoute:
      return CupertinoPageRoute(
        builder: (_) => const BottomNavbar(),
        settings: settings,
      );
    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(
        builder: (_) => const LandingPage(),
        settings: settings,
      );
  }
}
