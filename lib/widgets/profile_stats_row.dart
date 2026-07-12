import 'package:flutter/material.dart';
import 'package:food_delivary_app/widgets/profile_stat_card.dart';

class ProfileStatsRow extends StatelessWidget {
  const ProfileStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProfileStatCard(title: "Orders", count: 50),
        ProfileStatCard(title: "Vouchers", count: 10),
      ],
    );
    
  }
}