import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_fonsts.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/core/widgets/custom_network_image.dart';
import 'package:task1/core/widgets/custom_svg_image.dart';
import 'package:task1/feature/home/presentation/utils/dummy_data.dart';
import 'package:task1/feature/home/presentation/utils/utils.dart';


class MyProfileBasicDataWidget extends StatelessWidget {
  final ProfileEntity profileEntity;

  const MyProfileBasicDataWidget({super.key, required this.profileEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppSizes.ph8),
      padding: EdgeInsets.all(AppSizes.ph8),
      decoration: BoxDecoration(color: AppColors.greenColor, borderRadius: BorderRadius.circular(AppSizes.br8)),
      child: Row(
        children: [
          CustomNetworkImage.circle(
            imageUrl: profileEntity.imageUrl,
            size: AppSizes.ph36,
          ),
          SizedBox(
            width: AppSizes.pw6,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profileEntity.name,
                style: TextStyle(color: AppColors.whiteColor, fontWeight: AppFonts.medium, fontSize: AppSizes.sp14),
              ),
              Text(
                "${AppString.svn} : ${profileEntity.svnNumber}",
                style: TextStyle(color: AppColors.whiteColor, fontWeight: AppFonts.medium, fontSize: AppSizes.sp12),
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
              SizedBox(width: AppSizes.pw6,),
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
