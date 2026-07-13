import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary_app/widgets/profile_menu_item.dart';

class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(indent: 10, endIndent: 10),
        ProfileMenuItem(
          title: "edit profile",
          icon: Platform.isIOS ? CupertinoIcons.pen : Icons.edit_rounded,
        ),
        Divider(),
        ProfileMenuItem(
          title: "location",
          icon: Platform.isIOS
              ? CupertinoIcons.location
              : Icons.location_on_outlined,
        ),
        Divider(),
        ProfileMenuItem(
          title: "payment methods",
          icon: Platform.isIOS
              ? CupertinoIcons.creditcard
              : Icons.credit_card_rounded,
        ),
        Divider(),
        ProfileMenuItem(
          title: "my orders",
          icon: Platform.isIOS
              ? CupertinoIcons.shopping_cart
              : Icons.shopping_bag_rounded,
        ),
        Divider(),
        ProfileMenuItem(
          title: "my vouchers",
          icon: Platform.isIOS
              ? CupertinoIcons.gift
              : Icons.card_giftcard_rounded,
        ),
        Divider(),
        ProfileMenuItem(
          title: "settings",
          icon: Platform.isIOS
              ? CupertinoIcons.settings
              : Icons.settings_outlined,
        ),
        Divider(),
        ProfileMenuItem(
          title: "about",
          icon: Platform.isIOS
              ? CupertinoIcons.info
              : Icons.info_outline_rounded,
        ),
        Divider(),
        ProfileMenuItem(
          title: "logout",
          icon: Platform.isIOS
              ? CupertinoIcons.square_arrow_right
              : Icons.logout_rounded,
        ),
        Divider(indent: 10, endIndent: 10),
      ],
    );
  }
}
