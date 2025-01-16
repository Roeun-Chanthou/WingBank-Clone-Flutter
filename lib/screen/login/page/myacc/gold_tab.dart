import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GoldTab extends StatelessWidget {
  const GoldTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
            height: 3.h,
          ),
          Text(
            "You do not have any gold",
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Text(
            "Open now to and earn interest rate up to",
            style: TextStyle(
              fontSize: 15.sp,
            ),
          ),
          Text(
            "5.00% p.a. plus a special offer for your goal",
            style: TextStyle(
              fontSize: 15.sp,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue.shade600,
              side: BorderSide(
                color: Colors.blue.shade600,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 1.h,
                horizontal: 4.w,
              ),
            ),
            onPressed: () {},
            child: Text(
              "Open Save for Goal Now",
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
