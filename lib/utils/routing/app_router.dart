import 'package:flutter/material.dart';
import '../../features/authentication/screens/login/login.dart';
import '../../features/authentication/screens/onboarding/onboarding.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoarding());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Routes defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
