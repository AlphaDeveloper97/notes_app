import 'package:flutter/material.dart';
import 'package:note_app/models/note.dart';
import 'package:note_app/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final Note note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        noteOne: note,
      ),
    );
  }
}
