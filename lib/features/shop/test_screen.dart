import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../utils/constants/sizes.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const Text("Test Screen"),
              const SizedBox(height: 100),
              IconButton(
                icon: const Icon(Icons.share, size: MySizes.iconMd),
                onPressed: () async {
                  try {
                    await Share.share("https://www.google.com");
                  } catch (e) {
                    print('Error sharing content: $e');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
