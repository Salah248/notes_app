import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/cutsom_text_feiled.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, supTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            onSaved: (p0) {
              title = p0;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 15),
          CustomTextFeild(
            onSaved: (p0) {
              supTitle = p0;
            },
            maxLines: 5,
            hintText: 'Content',
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'Add',
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
