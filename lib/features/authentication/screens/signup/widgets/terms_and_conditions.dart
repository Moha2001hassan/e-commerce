import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool _isAgreeWithTerms = false;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: _isAgreeWithTerms,
            onChanged: (value) {
              setState(() {
                _isAgreeWithTerms = value ?? false;
              });
            },
          ),
        ),
        const SizedBox(width: 12),
        Text.rich(TextSpan(
          children: [
            TextSpan(
                text: "${MyTexts.iAgreeTo} ",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 13)),
            TextSpan(
                text: MyTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? MyColors.textWhite : MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? MyColors.textWhite : MyColors.primary,
                    )),
            TextSpan(
                text: " ${MyTexts.and} ",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 13)),
            TextSpan(
                text: MyTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? MyColors.textWhite : MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? MyColors.textWhite : MyColors.primary,
                    )),
          ],
        )),
      ],
    );
  }
}
