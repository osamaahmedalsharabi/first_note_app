import 'package:first_note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:first_note_app/models/note_model.dart';
import 'package:first_note_app/views/widgets/custom_buttom_widget.dart';
import 'package:first_note_app/views/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFormWIdget extends StatefulWidget {
  const CustomFormWIdget({
    super.key,
  });

  @override
  State<CustomFormWIdget> createState() => _CustomFormWIdgetState();
}

class _CustomFormWIdgetState extends State<CustomFormWIdget> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, description;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextFormFieldWidget(
            onSaved: (data) {
              title = data;
            },
            hintText: "title",
          ),
          CustomTextFormFieldWidget(
            onSaved: (data) {
              description = data;
            },
            hintText: "content",
            maxLines: 5,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          CustomButtomWidget(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                BlocProvider.of<AddNoteCubit>(context).addNote(NoteModel(
                    title: title!,
                    description: description!,
                    oncreate: DateTime.now().toString()));
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
