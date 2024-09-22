import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/cutsom_text_feiled.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            hintText: 'Title',
          ),
          const SizedBox(height: 15),
          CustomTextFeild(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
            onChanged: (p0) {},
            hintText: 'Content',
          ),
          const SizedBox(
            height: 100,
          ),
          CustomButton(
            text: 'Add',
          )
        ],
      ),
    );
  }
}
