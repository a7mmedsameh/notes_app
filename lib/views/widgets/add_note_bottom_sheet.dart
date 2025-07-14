import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_12/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          const CustomTextField(hintText: 'Title'),
          SizedBox(height: 7.h),
          const CustomTextField(hintText: 'Content' , maxLines: 5),
        ],
      ),
    );
  }
}
