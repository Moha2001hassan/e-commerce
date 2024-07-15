import 'package:e_commerce/common/widgets/form_divider.dart';
import 'package:e_commerce/common/widgets/social_buttons.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../../utils/helpers/my_helper_functions.dart';
import 'widgets/signup_form.dart';
import 'widgets/terms_and_conditions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark? Colors.black : Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              // Title
              Text(MyTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 32),

              // Form
              const SignUpForm(),

              // Terms & Conditions Checkbox
              const TermsAndConditions(),
              const SizedBox(height: 32),

              // Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(MyTexts.createAccount),
                ),
              ),
              const SizedBox(height: 32),

              // Divider
              const FormDivider(dividerText: MyTexts.orSignupWith),
              const SizedBox(height: 32),

              // Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

