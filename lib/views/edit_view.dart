import 'package:first_note_app/views/widgets/edit_view_body_widget.dart';
import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: EditViewBodyWidget(),
    ));
  }
}
