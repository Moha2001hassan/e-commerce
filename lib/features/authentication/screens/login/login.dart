import 'package:flutter/material.dart';
import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo, Title & Subtitle
                LoginHeader(),

                // Form
                LoginForm(),

                // Divider
                FormDivider(dividerText: MyTexts.loginDividerText),
                SizedBox(height: 30),

                // Footer
                SocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
