import 'package:flutter/material.dart';
import 'package:task1/feature/home/presentation/components/profile_item_component.dart';
import 'package:task1/feature/home/presentation/utils/dummy_data.dart';


class ProfilesSubScreen extends StatelessWidget {
  const ProfilesSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ProfileItemComponent(
        profileEntity: profileListDummyData[index], // Dynamic data (can't be const)
      ),
      itemCount: profileListDummyData.length,
    );
  }
}
