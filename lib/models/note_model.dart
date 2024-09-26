import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String modelTitle;
  @HiveField(1)
  String modelSupTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  NoteModel({
    required this.modelTitle,
    required this.modelSupTitle,
    required this.date,
    required this.color,
  });
}
