import 'package:flutter/material.dart';
import 'package:food_delivary_app/widgets/profile_menu_item.dart';

class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(thickness: 1.5, indent: 10, endIndent: 10),
              ProfileMenuItem(
                title: "edit profile",
                icon: Icons.edit_rounded,
              ),
              const Divider(thickness: 1.5, indent: 20, endIndent: 20),
              ProfileMenuItem(
                title: "location",
                icon: Icons.location_on_outlined,
              ),
              const Divider(thickness: 1.5, indent: 20, endIndent: 20),
              ProfileMenuItem(
                title: "payment methods",
                icon: Icons.credit_card_rounded,
              ),
              const Divider(thickness: 1.5, indent: 20, endIndent: 20),
              ProfileMenuItem(
                title: "my orders",
                icon: Icons.shopping_bag_rounded,
              ),
              const Divider(thickness: 1.5, indent: 20, endIndent: 20),
              ProfileMenuItem(
                title: "my vouchers",
                icon: Icons.card_giftcard_rounded,
              ),
              const Divider(thickness: 1.5, indent: 20, endIndent: 20),
              ProfileMenuItem(
                title: "settings",
                icon: Icons.settings_outlined,
              ),
              const Divider(thickness: 1.5, indent: 20, endIndent: 20),
              ProfileMenuItem(
                title: "about",
                icon: Icons.info_outline_rounded,
              ),
              const Divider(thickness: 1.5, indent: 20, endIndent: 20),
              ProfileMenuItem(
                title: "logout",
                icon: Icons.logout_rounded,
              ),
              const Divider(thickness: 1.5, indent: 10, endIndent: 10),
        ],
    );
  }
}
