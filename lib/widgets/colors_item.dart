import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.colorItem});

  final bool isActive;
  final Color colorItem;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: colorItem,
            ),
          )
        : CircleAvatar(
            radius: 28,
            backgroundColor: colorItem,
          );
  }
}
