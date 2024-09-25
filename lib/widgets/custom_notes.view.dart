import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_list_view.dart';

class CustomNotesView extends StatefulWidget {
  const CustomNotesView({
    super.key,
  });

  @override
  State<CustomNotesView> createState() => _CustomNotesViewState();
}

class _CustomNotesViewState extends State<CustomNotesView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
            icon: Icons.search,
            text: 'Notes',
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
