import 'package:flutter/material.dart';
import 'package:food_delivary_app/core/constants/app_images.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
