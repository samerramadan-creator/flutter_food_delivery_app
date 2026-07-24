import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeliveryDetailsCard extends StatelessWidget {
  final FaIconData icon;
  final String title;
  final String value;
  final String unit;
  final Color? color;

  const DeliveryDetailsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.unit,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * .06,
      width: screenWidth * .4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade200,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: constraints.maxHeight * .8,
                width: constraints.maxWidth * .25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(child: FaIcon(icon, color: color)),
              ),
            ),
            SizedBox(width: constraints.maxWidth * .035),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge!.copyWith(color: Colors.black54),
                ),
                Text(
                  "$value $unit",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
