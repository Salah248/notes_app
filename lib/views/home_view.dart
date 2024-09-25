import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constanse.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_add_note_button.dart';
import 'package:notes_app/widgets/custom_notes.view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPraimaryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddNoteButton();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const CustomNotesView(),
    );
  }
}
