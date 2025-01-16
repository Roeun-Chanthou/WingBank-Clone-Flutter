import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 7.h,
          ),
          Text(
            title,
            maxLines: 1,
            style: TextStyle(
              fontSize: 15.5.sp,
              color: Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
