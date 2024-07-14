import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  final Function onSkip;
  const SkipButton({
    super.key, required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      right: 30,
      child: TextButton(
          onPressed: () => onSkip(),
          child: const Text(
            "Skip",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )),
    );
  }
}
