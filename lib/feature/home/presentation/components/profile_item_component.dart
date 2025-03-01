import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/feature/home/presentation/components/profile_actions_component.dart';
import 'package:task1/feature/home/presentation/components/profile_information_data_component.dart';
import 'package:task1/feature/home/presentation/utils/dummy_data.dart';
import 'package:task1/feature/home/presentation/utils/enums.dart';
import 'package:task1/feature/home/presentation/widgets/my_profile_basic_data_widget.dart';
import 'package:task1/feature/home/presentation/widgets/profile_basic_data_widget.dart';


class ProfileItemComponent extends StatelessWidget {
  final ProfileEntity profileEntity;

  const ProfileItemComponent({super.key, required this.profileEntity});

  @override
  Widget build(BuildContext context) {
    final bool isMyProfile = profileEntity.relationshipStatus == RelationshipStatus.me.index;
    return Container(
      margin: EdgeInsets.only(top: AppSizes.ph24, left: AppSizes.pw16, right: AppSizes.pw16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.br8),
        color: AppColors.whiteColor,
      ),
      child: Column(
        children: [
          ///image , name, svn, status
          isMyProfile
              ? MyProfileBasicDataWidget(profileEntity: profileEntity)
              : ProfileBasicDataWidget(profileEntity: profileEntity),

          if (!isMyProfile)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.pw8),
              child: const Divider(
                height: 0,
                color: AppColors.softGreyColor,
              ),
            ),

          ///My Father ,0 consult ,12 medicine ,...etc
          ProfileInformationDataComponent(profileEntity: profileEntity),

          Padding(
            padding: EdgeInsets.only(
              right: AppSizes.pw8,
              left: AppSizes.pw8,
              top: AppSizes.ph8,
            ),
            child: const Divider(
              height: 0,
              color: AppColors.softGreyColor,
            ),
          ),

          ///Edit ,switch profile,..etc
          Padding(
            padding: EdgeInsets.all(AppSizes.ph8),
            child: ProfileActionsComponent(isMyProfile: isMyProfile),
          ),
        ],
      ),
    );
  }
}
