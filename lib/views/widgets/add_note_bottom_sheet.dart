import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_12/views/widgets/custom_button.dart';
import 'package:project_12/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.only(
        left: 16.r,
        right: 16.r,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16.r,
        top: 16.r,
      ),
      curve: Curves.easeOut,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(hintText: 'Title'),
            SizedBox(height: 7.h),
            const CustomTextField(hintText: 'Content', maxLines: 5),
            SizedBox(height: 7.h),
            const CustomButton(textForButton: 'Add'),
          ],
        ),
      ),
    );
  }
}
