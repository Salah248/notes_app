import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constanse.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_blok_observer.dart';
import 'package:notes_app/views/home_view.dart';

void main() async {
  // تعيين مراقب BLoC
  Bloc.observer = SimpleBlokObserver();

  // تهيئة Hive
  await Hive.initFlutter();

  // تسجيل الـ Adapter لنموذج NoteModel
  Hive.registerAdapter(NoteModelAdapter());

  // فتح الـ Box الخاص بالملاحظات
  await Hive.openBox<NoteModel>(kNotesBox);

  // تشغيل التطبيق
  runApp(const NotesApp());
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
