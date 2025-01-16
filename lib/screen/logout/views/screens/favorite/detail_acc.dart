import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailAcc extends StatelessWidget {
  const DetailAcc({super.key, required this.leftText, required this.rightText});

  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            leftText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
            ),
          ),
          const Spacer(),
          Text(
            rightText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
