import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_assets.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/feature/home/presentation/screens/profiles_sub_screen.dart';
import 'package:task1/feature/home/presentation/utils/utils.dart';
import 'package:task1/feature/home/presentation/widgets/app_bar_profile_widget.dart';


class HomeController with ChangeNotifier {
  int currentBottomNavBarIndex = 3;
  List<BottomNavBarItem> bottomNavBar = [
    const BottomNavBarItem(iconPath: AppAssets.medicationIconSvg, label: AppString.medication),
    const BottomNavBarItem(iconPath: AppAssets.consultIconSvg, label: AppString.consult),
    const BottomNavBarItem(iconPath: AppAssets.addRoundedIconSvg, label: AppString.add),
    const BottomNavBarItem(iconPath: AppAssets.profilesIconSvg, label: AppString.profiles, ),
    const BottomNavBarItem(
      iconPath: AppAssets.moreIconSvg,
      label: AppString.more,
    ),
  ];
  List<Widget> screens = [
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const ProfilesSubScreen(),
    const SizedBox(),
  ];
  List<PreferredSizeWidget?> appBars = [
    null,
    null,
    null,
    const AppBarProfileWidget(),
    null,
  ];

  onChangeBottomNavBar({required int index}) {
    currentBottomNavBarIndex = index;
    notifyListeners();
  }
}
