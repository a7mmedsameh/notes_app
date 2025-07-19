import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_12/views/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.icon,
    required this.headerText,
    this.onPressed,
  });
  final IconData icon;
  final String headerText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(headerText, style: TextStyle(fontSize: 28.sp)),
            CustomIcon(icon: icon, onPressed: onPressed),
          ],
        ),
      ),
    );
  }
}
