import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:e_commerce/utils/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/screen_util.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            Image(
              width: ScreenUtil().screenWidth * 0.7,
              image: const AssetImage(MyImages.resetPassword),
            ),
            const SizedBox(height: 32),

            // Title & SubTitle
            Text(
              MyTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              MyTexts.changeYourPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushNamed(Routes.loginScreen),
                child: const Text(MyTexts.done),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(MyTexts.resendPassword),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
