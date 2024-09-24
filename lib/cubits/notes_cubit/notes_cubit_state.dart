part of 'notes_cubit.dart';

@immutable
sealed class NotescubitState {}

final class NotescubitInitial extends NotescubitState {}

final class NotesLoading extends NotescubitState {}

final class NotesSuccess extends NotescubitState {
  final List<NoteModel> notes;
  NotesSuccess(this.notes);
}

final class NotesFailure extends NotescubitState {
  final String errMessage;
  NotesFailure(this.errMessage);
}
