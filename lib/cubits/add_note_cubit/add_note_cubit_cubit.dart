import 'package:first_note_app/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note){
    
  }
}
