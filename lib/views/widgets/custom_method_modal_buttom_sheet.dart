import 'package:first_note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:first_note_app/views/widgets/custom_model_buttom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomMethodModalButtomSheet{
  static Future<dynamic> customMethodModalButtomSheet(BuildContext context) {
    return showModalBottomSheet(
              context: context,
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              builder: (context) {
                return BlocProvider(
                  create: (context) => AddNoteCubitCubit(),
                  child: const CustomModelButtomSheetWidget(),
                );
              });
  }
}