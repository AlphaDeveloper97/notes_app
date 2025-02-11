import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note.dart';

import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteOne});
  final Note noteOne;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppBar(
            onPressed: () {
              widget.noteOne.title = title ?? widget.noteOne.title;
              widget.noteOne.subTitle = content ?? widget.noteOne.subTitle;
              widget.noteOne.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextFormField(
              onChanged: (value) {
                title = value;
              },
              hint: "Title"),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onChanged: (value) {
              content = value;
            },
            hint: "Content",
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
