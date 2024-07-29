import 'package:flutter/material.dart';
import 'progress_indicator_and_rating.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(text: '5', value: 0.75),
              RatingProgressIndicator(text: '4', value: 0.55),
              RatingProgressIndicator(text: '3', value: 0.35),
              RatingProgressIndicator(text: '2', value: 0.15),
              RatingProgressIndicator(text: '1', value: 0.45),
            ],
          ),
        ),
      ],
    );
  }
}