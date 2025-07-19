import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_12/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:project_12/models/note_model.dart';
import 'package:project_12/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: notes);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                notes.title,
                style: TextStyle(color: Colors.black, fontSize: 26.sp),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.r),
                child: Text(
                  notes.subTitle,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: .5),
                    fontSize: 16.sp,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24.sp,
                ),
              ),
            ),
            Text(
              notes.date,
              style: TextStyle(color: Colors.black.withValues(alpha: .5)),
            ),
          ],
        ),
      ),
    );
  }
}
