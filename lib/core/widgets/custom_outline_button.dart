import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_fonsts.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/core/widgets/custom_svg_image.dart';

class CustomOutlineButton extends StatelessWidget {
  final String? iconAsset;
  final String textButton;
  final TextStyle? textStyleButton;

  const CustomOutlineButton({super.key, this.iconAsset, this.textStyleButton, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.pw4),
          side: BorderSide(color: AppColors.blueColor, width: AppSizes.pw1), // Border color & width
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.br8), // Rounded corners
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconAsset != null)
            Padding(
              padding: EdgeInsetsDirectional.only(end: AppSizes.pw4),
              child: CustomSvgImage(
                path: iconAsset!,
                height: AppSizes.ph10_5,
                width: AppSizes.ph10_5,
              ),
            ),
          Text(textButton,
              style: textStyleButton ??
                  TextStyle(fontSize: AppSizes.sp12, fontWeight: AppFonts.medium, color: AppColors.blueColor)),
        ],
      ),
    );
  }
}
