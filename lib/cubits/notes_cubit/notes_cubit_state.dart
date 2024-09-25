part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotescubitInitial extends NotesState {}

final class NotesLoaded extends NotesState {}
