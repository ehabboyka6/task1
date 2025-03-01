import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_fonsts.dart';
import 'package:task1/core/utils/app_sizes.dart';
import 'package:task1/core/widgets/custom_svg_image.dart';
import 'package:task1/feature/home/presentation/controllers/home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => HomeController(),
        child: Consumer<HomeController>(builder: (context, provider, child) {
          return Scaffold(
            backgroundColor: AppColors.softGreyColor,

            ///AppBar
            appBar: provider.appBars[provider.currentBottomNavBarIndex],

            ///body
            body: provider.screens[provider.currentBottomNavBarIndex],

            ///bottomNavigationBar
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle:
                  TextStyle(fontSize: AppSizes.sp12, fontWeight: AppFonts.semiBold, color: AppColors.blueColor),
              unselectedLabelStyle:
                  TextStyle(fontSize: AppSizes.sp12, fontWeight: AppFonts.medium, color: AppColors.greyColor),
              currentIndex: provider.currentBottomNavBarIndex,
              onTap: (index) {
                provider.onChangeBottomNavBar(index: index);
              },
              items: List.generate(
                provider.bottomNavBar.length,
                (index) => BottomNavigationBarItem(
                  icon: CustomSvgImage(
                    path: provider.bottomNavBar[index].iconPath,
                    height: AppSizes.ph24,
                    width: AppSizes.ph24,
                    color: index==provider.currentBottomNavBarIndex?AppColors.blueColor:AppColors.greyColor,
                  ),
                  label: provider.bottomNavBar[index].label,
                ),
              ),
            ),
          );
        }));
  }
}
