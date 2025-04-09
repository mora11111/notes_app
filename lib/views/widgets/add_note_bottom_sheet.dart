import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'content',
          maxLines: 5,)
        ],
      ),
    );
  }
}