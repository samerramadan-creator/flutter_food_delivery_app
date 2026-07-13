import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? subtitle;

  const ProfileMenuItem({
    super.key,
    required this.title,
    required this.icon,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final titleProfileMenuItem = Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
    );

    final subtitleProfileMenuItem = subtitle != null
        ? Text(
            subtitle!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          )
        : null;

    return Platform.isIOS
        ? CupertinoListTile(
            title: titleProfileMenuItem,
            subtitle: subtitleProfileMenuItem,
            leading: Icon(icon, color: Colors.black87),
            trailing: Icon(
              Platform.isIOS
                  ? CupertinoIcons.chevron_forward
                  : Icons.chevron_right_rounded,
            ),
            onTap: () {},
          )
        : ListTile(
            title: titleProfileMenuItem,
            subtitle: subtitleProfileMenuItem,
            leading: Icon(icon, color: Colors.black87),
            trailing: Icon(
              Platform.isIOS
                  ? CupertinoIcons.chevron_forward
                  : Icons.chevron_right_rounded,
            ),
            onTap: () {},
          );
  }
}
