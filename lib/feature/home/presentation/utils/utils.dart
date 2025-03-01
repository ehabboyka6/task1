import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_assets.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/feature/home/presentation/utils/enums.dart';

class StatusStyle {
  final String name;
  final Color textColor;
  final String iconPath;

  const StatusStyle({
    required this.name,
    required this.textColor,
    required this.iconPath,
  });
}

Map<int, StatusStyle> statusStyles = {
  Status.verified.index: const StatusStyle(
    name: AppString.verified,
    textColor: AppColors.whiteColor,
    iconPath: AppAssets.checkIconSvg,
  ),
  Status.unverified.index: const StatusStyle(
    name: AppString.unverified,
    textColor: AppColors.redColor,
    iconPath: AppAssets.closeIconSvg,
  ),
  Status.pending.index: const StatusStyle(
    name: AppString.pending,
    textColor: AppColors.greyColor,
    iconPath: AppAssets.pendingIconSvg,
  ),
};


Map<int, String> relationshipName = {
  RelationshipStatus.me.index: AppString.me,
  RelationshipStatus.myFather.index: AppString.myFather,
  RelationshipStatus.myMother.index: AppString.myMother,
};

//////////////////////////////////////////////////
class BottomNavBarItem {
  final String iconPath;
  final String label;

  const BottomNavBarItem({
    required this.iconPath,
    required this.label,
  });
}
