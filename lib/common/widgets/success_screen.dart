import 'package:flutter/material.dart';
import '../../utils/constants/text_strings.dart';
import '../../utils/helpers/screen_util.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.title,
      required this.supTitle,
      required this.image,
      required this.onPressed});

  final String title, supTitle, image;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
          child: Column(
            children: [
              // Image
              Image(
                width: ScreenUtil().screenWidth * 0.7,
                image: AssetImage(image),
              ),
              const SizedBox(height: 32),

              // Title & SubTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                supTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => onPressed(),
                  child: const Text(MyTexts.mContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
