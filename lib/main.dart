import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constanse.dart';
import 'package:notes_app/views/home_view.dart';

void main() async {
  runApp(const NotesApp());

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
