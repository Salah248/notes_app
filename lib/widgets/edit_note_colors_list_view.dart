import 'package:flutter/material.dart';
import 'package:notes_app/constanse.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_item.dart';

class EditNoteColoesList extends StatefulWidget {
  const EditNoteColoesList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColoesList> createState() => _EditNoteColoesListState();
}

class _EditNoteColoesListState extends State<EditNoteColoesList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                colorItem: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
