import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_sizes.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {Key? key, required this.imageUrl, this.height, this.width, this.fit, this.radius, this.color})
      : super(key: key);

  CustomNetworkImage.circle(
      {Key? key, required String imageUrl, String? errorImageUrl, required double size, BoxFit? fit, Color? color})
      : this(
            key: key,
            radius: BorderRadius.circular(AppSizes.brMax),
            imageUrl: imageUrl,
            height: size,
            width: size,
            fit: fit,
            color: color);

  CustomNetworkImage.square(
      {Key? key, required String imageUrl, String? errorImageUrl, required double size, BorderRadius? radius})
      : this(
          key: key,
          radius: radius ?? BorderRadius.circular(AppSizes.br8),
          imageUrl: imageUrl,
          height: size,
          width: size,
        );

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final BorderRadius? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.zero,
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit ?? BoxFit.cover,
        color: color,
      ),
    );
  }
}
