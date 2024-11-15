import 'package:first_note_app/views/widgets/custom_method_modal_buttom_sheet.dart';
import 'package:first_note_app/views/widgets/note_view_body_widget.dart';
import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            CustomMethodModalButtomSheet.customMethodModalButtomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
        body: const NoteViewBody(),
      ),
    );
  }
}
