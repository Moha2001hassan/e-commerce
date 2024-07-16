import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/routing/routes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Headings
            Text(MyTexts.forgetPassword, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 12),
            Text(MyTexts.forgetPasswordSubtitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 32),

            // Text Fields
            TextFormField(
              decoration: const InputDecoration(
                labelText: MyTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: 32),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(Routes.resetPasswordScreen);
                },
                child: const Text(MyTexts.submit),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
