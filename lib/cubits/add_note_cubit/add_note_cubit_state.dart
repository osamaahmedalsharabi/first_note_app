part of 'add_note_cubit_cubit.dart';

abstract class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteCubitLoading extends AddNoteCubitState {}

final class AddNoteCubitSuccesed extends AddNoteCubitState {}

final class AddNoteCubitFailure extends AddNoteCubitState {
  final String errorMessage;

  AddNoteCubitFailure({required this.errorMessage});
}
