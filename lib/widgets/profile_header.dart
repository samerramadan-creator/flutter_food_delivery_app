import 'package:flutter/material.dart';
import 'package:food_delivary_app/core/constants/app_images.dart';
import 'package:food_delivary_app/widgets/profile_stat_card.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withValues(alpha: .5),
                blurRadius: 15,
                offset: Offset(0, 5),
              ),
            ],
          ),

          child: const CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage(AppImages.profileImage),
          ),
        ),
        Text(
          "Samer Kedieh",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "samer610@gmail.com",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProfileStatCard(title: "Orders", count: 50),
            ProfileStatCard(title: "Vouchers", count: 10),
          ],
        ),
      ],
    );
  }
}
