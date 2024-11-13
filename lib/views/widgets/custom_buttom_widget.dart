
import 'package:flutter/material.dart';

class CustomButtomWidget extends StatelessWidget {
  final Function()? onTap;
  const CustomButtomWidget({
    super.key, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
