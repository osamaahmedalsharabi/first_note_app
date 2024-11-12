
import 'package:first_note_app/views/widgets/custom_note_widget.dart';
import 'package:flutter/material.dart';

class CustomListNoteBuilderWidget extends StatelessWidget {
  const CustomListNoteBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const CustomNoteWidget();
        },
      ),
    );
  }
}
