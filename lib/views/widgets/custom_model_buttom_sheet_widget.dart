import 'package:first_note_app/views/widgets/custom_buttom_widget.dart';
import 'package:first_note_app/views/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class CustomModelButtomSheetWidget extends StatelessWidget {
  const CustomModelButtomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 50),
        child: Column(
          children: [
            CustomTextFieldWidget(
              hintText: "title",
              maxLines: 1,
            ),
            CustomTextFieldWidget(
              hintText: "title",
              maxLines: 5,
            ),
            Spacer(),
            CustomButtomWidget()
          ],
        ),
      ),
    );
  }
}
