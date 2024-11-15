import 'package:first_note_app/constants.dart';
import 'package:first_note_app/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) {
    emit(AddNoteCubitLoading());
    Future.delayed(const Duration(seconds: 2), () async {
      try {
        var noteBox = Hive.box<NoteModel>(kNoteBox);
        await noteBox.add(note);
        emit(AddNoteCubitSuccesed());
      } catch (e) {
        emit(AddNoteCubitFailure(errorMessage: e.toString()));
      }
    });
  }
}
