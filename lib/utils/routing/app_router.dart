import 'package:e_commerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/personalization/screens/address/add_new_address.dart';
import 'package:e_commerce/features/personalization/screens/address/address.dart';
import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/features/shop/screens/order/order.dart';
import 'package:e_commerce/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce/features/shop/test_screen.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/success_screen.dart';
import '../../features/authentication/screens/login/login.dart';
import '../../features/authentication/screens/onboarding/onboarding.dart';
import '../../features/authentication/screens/signup/signup.dart';
import '../../features/shop/screens/cart/cart.dart';
import '../../features/shop/screens/checkout/checkout.dart';
import '../../features/shop/screens/sub_category/sub_category.dart';
import '../../navigation_menu.dart';
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

      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      case Routes.productDetailsScreen:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());

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

      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ResetPassword());

      case Routes.navigationMenu:
        return MaterialPageRoute(builder: (_) => const NavigationMenu());

      case Routes.productReviewsScreen:
        return MaterialPageRoute(builder: (_) => const ProductReviewsScreen());

      case Routes.addNewAddressScreen:
        return MaterialPageRoute(builder: (_) => const AddNewAddressScreen());

      case Routes.userAddressScreen:
        return MaterialPageRoute(builder: (_) => const UserAddressScreen());

      case Routes.cartScreen:
        return MaterialPageRoute(builder: (_) => const CartScreen());

      case Routes.checkoutScreen:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());

      case Routes.testScreen:
        return MaterialPageRoute(builder: (_) => const TestScreen());

      case Routes.orderScreen:
        return MaterialPageRoute(builder: (_) => const OrderScreen());

      case Routes.subCategoriesScreen:
        return MaterialPageRoute(builder: (_) => const SubCategoriesScreen());

      default:
        return MaterialPageRoute(builder: (_) => const OnBoarding());
    }
  }
}
