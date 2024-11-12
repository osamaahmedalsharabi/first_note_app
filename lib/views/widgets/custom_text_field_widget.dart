import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final int maxLines;
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        cursorColor: const Color(0xff63FFDA),
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xff63FFDA),
          ),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }
  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        color: Colors.white,
        style: BorderStyle.solid,
      ),
    );
  }
}
