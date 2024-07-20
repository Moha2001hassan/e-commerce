import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';

class PromoSlider extends StatefulWidget {
  const PromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: widget.banners
              .map((url) => RoundedImage(imgUrl: url, fit: BoxFit.cover)).toList(),
        ),
        const SizedBox(height: 17),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(widget.banners.length, (index) {
            return CircularContainer(
              width: 20,
              height: 4,
              margin: const EdgeInsets.only(right: 10),
              backgroundColor:
                  _currentIndex == index ? MyColors.primary : Colors.grey,
            );
          }),
        )
      ],
    );
  }
}
