import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ItemBodyTabbar extends StatelessWidget {
  const ItemBodyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton.filled(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              Colors.white,
            ),
          ),
          onPressed: () {},
          icon: Icon(
            Icons.dns_rounded,
            color: Colors.grey,
            size: 40.sp,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          "No Transaction",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 1.w,
        ),
        Text(
          "There is no transaction to Display in",
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
        Text(
          "this period.",
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }
}
