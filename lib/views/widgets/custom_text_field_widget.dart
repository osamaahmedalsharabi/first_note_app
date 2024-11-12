import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final int maxLines;
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    this.maxLines = 1,
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
          focusedBorder: buildBorder(const Color(0xff63FFDA)),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: color ?? Colors.white,
        style: BorderStyle.solid,
      ),
    );
  }
}
