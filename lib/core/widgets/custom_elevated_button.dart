import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_fonsts.dart';
import 'package:task1/core/utils/app_sizes.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.textButton,
    this.textColorButton,
    this.buttonColor,
  });

  final String textButton;
  final Color? textColorButton;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0)),
        backgroundColor: WidgetStateProperty.all<Color>(buttonColor ?? AppColors.lightGreenColor),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.br4),
          ),
        ),
      ),
      child: Text(textButton,
          style: TextStyle(
              fontSize: AppSizes.sp14, fontWeight: AppFonts.medium, color: textColorButton ?? AppColors.blueColor)),
    );
  }
}
