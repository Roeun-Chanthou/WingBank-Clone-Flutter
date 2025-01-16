import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomDetail extends StatelessWidget {
  const BottomDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Free Cash Out",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              minimumSize: Size(0, 3.5.h),
              padding: EdgeInsets.only(
                left: 3.w,
                right: 3.w,
              ),
            ),
            onPressed: () {},
            child: Text(
              "Show Packages",
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
