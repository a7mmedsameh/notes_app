import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_12/models/note_model.dart';

part 'add_note_state.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {
    
  }
}
