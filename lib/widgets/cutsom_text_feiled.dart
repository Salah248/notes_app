import 'package:flutter/material.dart';
import 'package:notes_app/constanse.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextField(
        cursorColor: kPraimaryColor,
        maxLines: maxLines,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: buildBorder(),
          focusedBorder: buildBorder(color: kPraimaryColor),
          enabledBorder: buildBorder(),
          hintText: hintText,
          hintStyle: const TextStyle(color: kPraimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
