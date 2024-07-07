import 'package:flutter/material.dart';
import '../../../../../utils/helpers/screen_util.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Column(children: [
        Image(
          width: ScreenUtil().screenWidth * 0.8,
          height: ScreenUtil().screenHeight * 0.6,
          image: AssetImage(image),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ]),
    );
  }
}
