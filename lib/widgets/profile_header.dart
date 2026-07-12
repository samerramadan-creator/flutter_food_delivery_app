import 'package:flutter/material.dart';
import 'package:food_delivary_app/widgets/personal_info.dart';
import 'package:food_delivary_app/widgets/profile_stats_row.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return !isLandscape
        ? const Column(
            children: [
              PersonalInfo(),
              SizedBox(height: 10),
              ProfileStatsRow(),
            ],
          )
        :const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20),
              PersonalInfo(),
              ProfileStatsRow(),
              SizedBox(height: 15),
            ],
          );
  }
}
