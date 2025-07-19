import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_12/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:project_12/views/widgets/custom_appbar.dart';
import 'package:project_12/views/widgets/notes_list_view_builder.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: const Column(
        children: [
          CustomAppbar(icon: Icons.search, headerText: 'Notes'),
          Expanded(child: NotesListViewBuilder()),
        ],
      ),
    );
  }
}
