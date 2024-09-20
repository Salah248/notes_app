import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_add_note_button.dart';
import 'package:notes_app/widgets/custom_notes_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteButton();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesView(),
    );
  }
}
