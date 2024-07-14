import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/routing/routes.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: const [
              OnBoardingPage(
                  image: MyImages.onboarding1,
                  title: MyTexts.onBoardingTitle1,
                  subtitle: MyTexts.onBoardingSupTitle1),
              OnBoardingPage(
                  image: MyImages.onboarding2,
                  title: MyTexts.onBoardingTitle2,
                  subtitle: MyTexts.onBoardingSupTitle2),
              OnBoardingPage(
                  image: MyImages.onboarding3,
                  title: MyTexts.onBoardingTitle3,
                  subtitle: MyTexts.onBoardingSupTitle3),
            ],
          ),

          // Skip Button
          SkipButton(onSkip: _onSkip),

          // Dot Indicator
          OnboardingDotNavigation(controller: pageController),

          // Circular Button
          OnBoardingNextButton(onNext: _onNext),
        ],
      ),
    );
  }

  void _onSkip() {
    context.pushNamed(Routes.loginScreen);
  }

  void _onNext() {
    if (currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        currentPage++;
      });
    } else {
      context.pushNamed(Routes.loginScreen);
    }
  }
}
