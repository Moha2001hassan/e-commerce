import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:e_commerce/utils/helpers/screen_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/routing/routes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // hide back arrow
        actions: [
          IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
          child: Column(
            children: [
              // Image
              Image(
                width: ScreenUtil().screenWidth * 0.7,
                image: const AssetImage(MyImages.verifyEmailImg),
              ),
              const SizedBox(height: 32),

              // Title & SubTitle
              Text(
                MyTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                "support.codingwithmo.com",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                MyTexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      context.pushNamed(
                        Routes.successScreen,
                        arguments: {
                          MyTexts.titleArg: MyTexts.yourAccountCreatedTitle,
                          MyTexts.supTitleArg: MyTexts.yourAccountCreatedSubTitle,
                          MyTexts.imageArg: MyImages.verifyEmailSuccess,
                          MyTexts.onPressedArg: () {
                            context.pushNamedAndRemoveUntil(
                              Routes.loginScreen,
                              predicate: ModalRoute.withName(Routes.loginScreen), // Remove until LoginScreen
                            );
                          },
                        },
                      );
                    },
                    child: const Text(MyTexts.mContinue)),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () {}, child: const Text(MyTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
