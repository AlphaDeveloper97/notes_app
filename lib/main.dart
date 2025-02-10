import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

// import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constains.dart';

import 'package:note_app/models/note.dart';
import 'package:note_app/simple_bloc_observer.dart';

import 'package:note_app/views/notes_view.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: NotesView(),
    );
  }
}
