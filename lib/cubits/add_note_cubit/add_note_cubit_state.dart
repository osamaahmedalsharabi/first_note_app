part of 'add_note_cubit_cubit.dart';

abstract class AddNoteState {}

final class AddNoteCubitInitial extends AddNoteState {}

final class AddNoteCubitLoading extends AddNoteState {}

final class AddNoteCubitSuccesed extends AddNoteState {}

final class AddNoteCubitFailure extends AddNoteState {
  final String errorMessage;

  AddNoteCubitFailure({required this.errorMessage});
}
