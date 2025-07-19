import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_12/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:project_12/models/note_model.dart';
import 'package:project_12/views/widgets/custom_note_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: EdgeInsets.only(bottom: 12.r),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10.r),
                child: CustomNoteItem(notes: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
