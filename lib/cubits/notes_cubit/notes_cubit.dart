import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constanse.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotescubitInitial());

  List<NoteModel>? notes;

  void fetchAllNotes() {
    // Fetch notes from the opened Hive box
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
