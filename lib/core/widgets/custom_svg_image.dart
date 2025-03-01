import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.color,
  });

  final String path;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      height: height,
      width: width,
      colorFilter: color != null
          ? ColorFilter.mode(
              color!,
              BlendMode.srcIn, // Blend mode for coloring
            )
          : null,
      fit: fit,
    );
  }
}
