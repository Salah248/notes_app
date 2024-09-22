import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_edit_note_view.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CustomEditNoteViewBody();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          top: 24,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'First Note',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'First Note Suptitle ',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May,21 2024',
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
