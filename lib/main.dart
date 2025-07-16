import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:project_12/constatns.dart';
import 'package:project_12/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:project_12/models/note_model.dart';
import 'package:project_12/views/edit_note_view.dart';
import 'package:project_12/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => AddNoteCubit())],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.dark,
              fontFamily: 'Poppins',
            ),
            routes: {
              EditNoteView.id: (context) => const EditNoteView(),
              NotesView.id: (context) => const NotesView(),
            },
            initialRoute: NotesView.id,
          ),
        );
      },
    );
  }
}
