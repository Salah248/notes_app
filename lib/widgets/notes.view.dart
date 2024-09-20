import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          CustomNotesItem()
        ],
      ),
    );
  }
}
