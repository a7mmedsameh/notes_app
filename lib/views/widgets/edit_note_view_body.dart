import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_12/views/widgets/custom_appbar.dart';
import 'package:project_12/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        children: [
          const CustomAppbar(icon: Icons.check, headerText: 'Edit Note',),
          const CustomTextField(hintText: 'Title'),
          SizedBox(height: 7.h),
          const CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
