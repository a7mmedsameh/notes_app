import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26.sp),
            ),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.r),
              child: Text(
                'Build your career with Ahmed Sameh',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: .5),
                  fontSize: 16.sp,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24.sp,
              ),
            ),
          ),
          Text(
            'May21, 2022',
            style: TextStyle(color: Colors.black.withValues(alpha: .5)),
          ),
        ],
      ),
    );
  }
}
