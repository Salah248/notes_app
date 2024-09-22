import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_edit_note_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomEditNoteViewBody(),
    );
  }
}
