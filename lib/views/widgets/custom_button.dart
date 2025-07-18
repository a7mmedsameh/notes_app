import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_12/constatns.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textForButton,
    this.onTap,
    this.isLoading = false,
  });
  final String textForButton;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child:
              isLoading
                  ? SizedBox(
                    height: 24.h,
                    width: 24.h,
                    child: const CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                  : Text(
                    textForButton,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
        ),
      ),
    );
  }
}
