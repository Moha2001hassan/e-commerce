import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/success_screen.dart';
import '../../features/authentication/screens/login/login.dart';
import '../../features/authentication/screens/onboarding/onboarding.dart';
import '../../features/authentication/screens/signup/signup.dart';
import '../constants/text_strings.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoarding());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

      case Routes.verifyEmailScreen:
        return MaterialPageRoute(builder: (_) => const VerifyEmailScreen());

      case Routes.successScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => SuccessScreen(
            title: args[MyTexts.titleArg],
            supTitle: args[MyTexts.supTitleArg],
            image: args[MyTexts.imageArg],
            onPressed: args[MyTexts.onPressedArg],
          ),
        );

      default:
        return MaterialPageRoute(builder: (_) => const OnBoarding());
    }
  }
}
