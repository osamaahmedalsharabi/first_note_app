import 'package:first_note_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  const CustomTextFormFieldWidget({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "field is required";
          } else {
            return null;
          }
        },
        onSaved: onSaved,
        cursorColor: const Color(0xff63FFDA),
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: kPrimayColor,
          ),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimayColor),
          errorBorder: buildBorder(Colors.red),
          focusedErrorBorder: buildBorder(Colors.red),
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
