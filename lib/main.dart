import 'package:first_note_app/views/edit_view.dart';
import 'package:first_note_app/views/note_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.dark,
      ),
      home: const EditView(),
    );
  }
}
