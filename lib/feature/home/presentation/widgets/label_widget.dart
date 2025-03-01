import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_fonsts.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/core/widgets/custom_svg_image.dart';

class LabelWidget extends StatelessWidget {
  final String label;
  final String iconPath;
  final int? value;
  const LabelWidget({super.key,required this.iconPath,required this.label,this.value});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      CustomSvgImage(path: iconPath),

      if(value!=null)Padding(
        padding:  EdgeInsetsDirectional.only(start: AppSizes.pw4),
        child: Text(
          '$value',
          style: TextStyle(color: AppColors.lightDarkColor, fontWeight: AppFonts.medium, fontSize: AppSizes.sp11),
        ),
      ),

       Padding(
         padding:  EdgeInsetsDirectional.only(start: AppSizes.pw4),
         child: Text(
          label,
          style: TextStyle(color: AppColors.lightDarkColor, fontWeight: AppFonts.medium, fontSize: AppSizes.sp11),
               ),
       ),


    ],);
  }
}
