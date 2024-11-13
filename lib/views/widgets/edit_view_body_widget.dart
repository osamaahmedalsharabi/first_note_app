import 'package:first_note_app/views/widgets/custom_app_bar_widget.dart';
import 'package:first_note_app/views/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class EditViewBodyWidget extends StatelessWidget {
  const EditViewBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBarWidget(
            title: "Edit Note",
            icon: Icons.done,
          ),
          CustomTextFieldWidget(hintText: "title"),
          CustomTextFieldWidget(
            hintText: "content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
