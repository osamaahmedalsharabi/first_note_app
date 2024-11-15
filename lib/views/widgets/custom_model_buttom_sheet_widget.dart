import 'dart:developer';

import 'package:first_note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:first_note_app/views/widgets/custom_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomModelButtomSheetWidget extends StatelessWidget {
  const CustomModelButtomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteCubitFailure) {
              log(state.errorMessage.toString());
            }
            if (state is AddNoteCubitSuccesed) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteCubitLoading ? true : false,
                child: const SingleChildScrollView(child: CustomFormWIdget()));
          },
        ),
      ),
    );
  }
}
