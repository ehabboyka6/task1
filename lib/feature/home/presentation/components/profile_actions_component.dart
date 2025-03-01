import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/core/widgets/custom_elevated_button.dart';
import 'package:task1/core/widgets/custom_outline_button.dart';

class ProfileActionsComponent extends StatelessWidget {
  final bool isMyProfile;

  const ProfileActionsComponent({super.key, required this.isMyProfile});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.ph32,
      child: Row(
        children: isMyProfile
            ? [
                const Expanded(child: CustomOutlineButton(textButton: AppString.connection)),
                SizedBox(
                  width: AppSizes.pw17,
                ),
                const Expanded(
                    child: CustomElevatedButton(
                  textButton: AppString.edit,
                )),
                SizedBox(
                  width: AppSizes.pw17,
                ),
                const Expanded(
                    child: CustomElevatedButton(
                  textButton: AppString.currentlyUse,
                  textColorButton: AppColors.greenColor,
                  buttonColor: AppColors.softGreenColor,
                )),
              ]
            : [
                const Expanded(
                    child: CustomElevatedButton(
                  textButton: AppString.edit,
                )),
                SizedBox(
                  width: AppSizes.pw17,
                ),
                const Expanded(
                    child: CustomElevatedButton(
                  textButton: AppString.switchProfile,
                  textColorButton: AppColors.whiteColor,
                  buttonColor: AppColors.blueColor,
                )),
              ],
      ),
    );
  }
}
