import 'package:first_note_app/views/widgets/custom_buttom_widget.dart';
import 'package:first_note_app/views/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextFieldWidget(
                hintText: "title",
              ),
              const CustomTextFieldWidget(
                hintText: "content",
                maxLines: 5,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              const CustomButtomWidget()
            ],
          ),
        ),
      ),
    );
  }
}
