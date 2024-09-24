import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constanse.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotescubitCubit extends Cubit<NotescubitState> {
  NotescubitCubit() : super(NotescubitInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } on Exception catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
