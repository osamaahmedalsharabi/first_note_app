import 'package:first_note_app/views/widgets/custom_app_bar_widget.dart';
import 'package:first_note_app/views/widgets/custom_list_note_builder_widget.dart';
import 'package:flutter/material.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CustomAppBarWidget(),
          CustomListNoteBuilderWidget(),
        ],
      ),
    );
  }
}
