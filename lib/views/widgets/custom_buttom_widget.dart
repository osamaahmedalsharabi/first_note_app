import 'package:first_note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtomWidget extends StatelessWidget {
  final Function()? onTap;
  const CustomButtomWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff63FFDA),
                borderRadius: BorderRadius.circular(16)),
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: state is AddNoteCubitLoading
                ? const CircularProgressIndicator()
                : const Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
          ),
        );
      },
    );
  }
}
