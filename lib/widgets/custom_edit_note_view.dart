import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/cutsom_text_feiled.dart';

class CustomEditNoteViewBody extends StatelessWidget {
  const CustomEditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.check,
            text: 'Edit Note',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            hintText: 'Title',
          ),
          SizedBox(height: 15),
          CustomTextFeild(
            hintText: 'Content',
            maxLines: 5, // Added maxLines for Content field
          ),
        ],
      ),
    );
  }
}
