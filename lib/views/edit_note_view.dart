import 'package:flutter/material.dart';
import 'package:project_12/models/note_model.dart';
import 'package:project_12/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  static String id = 'EditNoteView';
  final NoteModel note;
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(body: EditNoteViewBody(note:  note,));
  }
}
