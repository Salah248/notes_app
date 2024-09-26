import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/cutsom_text_feiled.dart';

class CustomEditNoteViewBody extends StatefulWidget {
  const CustomEditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<CustomEditNoteViewBody> createState() => _CustomEditNoteViewBodyState();
}

class _CustomEditNoteViewBodyState extends State<CustomEditNoteViewBody> {
  String? editTitle, editSuptitel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.modelTitle = editTitle ?? widget.note.modelTitle;
              widget.note.modelSupTitle =
                  editSuptitel ?? widget.note.modelSupTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.check,
            text: 'Edit Note',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            onChanged: (p0) {
              editTitle = p0;
            },
            hintText: widget.note.modelTitle,
          ),
          const SizedBox(height: 15),
          CustomTextFeild(
            onChanged: (p0) {
              editSuptitel = p0;
            },
            hintText: widget.note.modelSupTitle,
            maxLines: 5, // Added maxLines for Content field
          ),
        ],
      ),
    );
  }
}
