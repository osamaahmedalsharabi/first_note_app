import 'package:first_note_app/views/widgets/custom_model_buttom_sheet_widget.dart';
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
            showModalBottomSheet(
                context: context,
                shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                builder: (context) {
                  return const CustomModelButtomSheetWidget();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const NoteViewBody(),
      ),
    );
  }
}
