
import 'package:flutter/material.dart';

class CustomButtomWidget extends StatelessWidget {
  const CustomButtomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff63FFDA),
          borderRadius: BorderRadius.circular(16)),
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Text(
        "Add",
        style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
