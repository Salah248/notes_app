import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
