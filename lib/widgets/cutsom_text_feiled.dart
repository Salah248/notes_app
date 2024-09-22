import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({
    super.key,
    this.hintText,
    this.onChanged,
    this.contentPadding,
    this.maxLines = 1,
  });
  Function(String)? onChanged;
  String? hintText;
  final int maxLines;

  EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      style: const TextStyle(color: Colors.white),
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.blue)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: '$hintText',
        hintStyle: const TextStyle(
          color: Color(0xff62FCD7),
        ),
      ),
    );
  }
}
