import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_fonsts.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/core/widgets/custom_network_image.dart';
import 'package:task1/core/widgets/custom_svg_image.dart';
import 'package:task1/feature/home/presentation/utils/dummy_data.dart';
import 'package:task1/feature/home/presentation/utils/utils.dart';


class ProfileBasicDataWidget extends StatelessWidget {
  final ProfileEntity profileEntity;

  const ProfileBasicDataWidget({super.key, required this.profileEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.ph16),
      child: Row(
        children: [
          Container(
            height: AppSizes.ph40,
            width: AppSizes.ph40,
            alignment: Alignment.center,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(AppSizes.brMax), color: profileEntity.borderColor),
            child: CustomNetworkImage.circle(
              imageUrl: profileEntity.imageUrl,
              size: AppSizes.ph36,
            ),
          ),
          SizedBox(
            width: AppSizes.pw6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profileEntity.name,
                style: TextStyle(color: AppColors.lightDarkColor, fontWeight: AppFonts.medium, fontSize: AppSizes.sp14),
              ),
              Text(
                "${AppString.svn} : ${profileEntity.svnNumber}",
                style: TextStyle(color: AppColors.lightDarkColor, fontWeight: AppFonts.medium, fontSize: AppSizes.sp12),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                statusStyles[profileEntity.status]!.name,
                style: TextStyle(
                    fontSize: AppSizes.sp12,
                    fontWeight: AppFonts.medium,
                    color: statusStyles[profileEntity.status]!.textColor),
              ),
              SizedBox(
                width: AppSizes.pw6,
              ),
              CustomSvgImage(
                path: statusStyles[profileEntity.status]!.iconPath,
              ),
            ],
          )
        ],
      ),
    );
  }
}
