import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.imgUrl,
    this.width = 315,
    this.height = 167,
    this.backgroundColor = MyColors.light,
    this.borderRadius = MySizes.md,
    this.applyImgRadius = true,
    this.isNetworkImage = false,
    this.fit = BoxFit.contain,
    this.padding,
    this.border,
    this.onPressed,
  });

  final double? width, height;
  final String imgUrl;
  final bool applyImgRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
          color: backgroundColor,
        ),
        child: ClipRRect(
          borderRadius: applyImgRadius
              ? BorderRadius.circular(MySizes.md)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imgUrl)
                : AssetImage(imgUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
