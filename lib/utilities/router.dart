import 'package:flutter/cupertino.dart';
import 'package:graduation_project/controllers/database_controller.dart';
import 'package:graduation_project/utilities/routes.dart';
import 'package:graduation_project/views/pages/bottom_navbar.dart';
import 'package:graduation_project/views/pages/landing_page.dart';
import 'package:graduation_project/views/pages/auth_page.dart';
import 'package:graduation_project/views/pages/product_details.dart';
import 'package:provider/provider.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
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
    case AppRoutes.productDetailsRoute:
      final args = settings.arguments as Map<String, dynamic>;
      final product = args['product'];
      final database = args['database'];
      return CupertinoPageRoute(
        builder: (_) => Provider<Database>.value(
          value: database,
          child: ProductDetails(product: product),
        ),
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
