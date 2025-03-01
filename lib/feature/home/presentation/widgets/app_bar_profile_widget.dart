import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task1/core/utils/app_assets.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_fonsts.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/core/widgets/custom_outline_button.dart';

class AppBarProfileWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSizes.ph9),
      child: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.transparentColor, // Set background color
          statusBarIconBrightness: Brightness.dark, // Dark icons for light background
          statusBarBrightness: Brightness.dark, // For iOS
        ),
        backgroundColor: AppColors.transparentColor,
        title: Text(AppString.profiles,
            style: TextStyle(fontSize: AppSizes.sp28, fontWeight: AppFonts.normal, color: AppColors.lightDarkColor)),
        actions: [
          Container(
            margin: EdgeInsetsDirectional.only(end: AppSizes.pw16),
            width: AppSizes.pw80,
            height: AppSizes.ph32,
            child: const CustomOutlineButton(
              iconAsset: AppAssets.addIconSvg,
              textButton: AppString.addNew,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppSizes.ph45);
}
