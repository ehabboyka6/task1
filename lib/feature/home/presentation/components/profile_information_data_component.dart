import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_assets.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/feature/home/presentation/utils/dummy_data.dart';
import 'package:task1/feature/home/presentation/utils/enums.dart';
import 'package:task1/feature/home/presentation/utils/utils.dart';
import 'package:task1/feature/home/presentation/widgets/label_widget.dart';


class ProfileInformationDataComponent extends StatelessWidget {
  final ProfileEntity profileEntity;

  const ProfileInformationDataComponent({super.key, required this.profileEntity});

  @override
  Widget build(BuildContext context) {
    bool isMyProfile = profileEntity.relationshipStatus == RelationshipStatus.me.index;

    return Padding(
      padding: EdgeInsets.only(top: AppSizes.ph16, left: AppSizes.pw8, right: AppSizes.pw8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LabelWidget(
            iconPath: AppAssets.relationshipStatusIconSvg,
            label: relationshipName[profileEntity.relationshipStatus]!,
          ),
          ...isMyProfile
              ? [
                  LabelWidget(
                    iconPath: AppAssets.connectIconSvg,
                    label: AppString.connect,
                    value: profileEntity.connectionNumber,
                  ),
                  LabelWidget(
                    iconPath: AppAssets.medicationIconSvg,
                    label: AppString.medicine,
                    value: profileEntity.medicineNumber,
                  ),
                  LabelWidget(
                    iconPath: AppAssets.consultIconSvg,
                    label: AppString.consult,
                    value: profileEntity.consultNumber,
                  ),
                ]
              : [
                  LabelWidget(
                    iconPath: AppAssets.consultIconSvg,
                    label: AppString.consult,
                    value: profileEntity.consultNumber,
                  ),
                  LabelWidget(
                    iconPath: AppAssets.medicationIconSvg,
                    label: AppString.medicine,
                    value: profileEntity.medicineNumber,
                  ),
                ]
        ],
      ),
    );
  }
}
