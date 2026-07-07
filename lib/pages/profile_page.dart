import 'package:flutter/material.dart';
import 'package:food_delivary_app/widgets/profile_header.dart';
import 'package:food_delivary_app/widgets/profile_menu_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(children: [ProfileHeader(), ProfileMenuTile()]),
    );
  }
}
