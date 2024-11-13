import 'package:first_note_app/views/widgets/custom_form_widget.dart';
import 'package:flutter/material.dart';

class CustomModelButtomSheetWidget extends StatelessWidget {
  const CustomModelButtomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: SingleChildScrollView(
          child: CustomFormWIdget(),
        ),
      ),
    );
  }
}
