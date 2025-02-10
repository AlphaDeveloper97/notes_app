import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constains.dart';
import 'package:note_app/models/note.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<Note>? notes;
  fetchAllNotes() {
    // emit(NotesLoading());
    // try {
    var notesbox = Hive.box<Note>(kNotesBox);
    notes = notesbox.values.toList();
    // emit(NotesSuccess(notes));
    // } catch (e) {
    //   emit(NotesFailure(e.toString()));
    // }
  }
}
