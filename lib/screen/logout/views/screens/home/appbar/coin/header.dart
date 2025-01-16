import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HeaderWingCoin extends StatelessWidget {
  const HeaderWingCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 0.h,
                ),
                child: Text(
                  "Pay & Earn",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Get Instant Wingpoints",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Enjoy with redemptions!",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Positioned(
            right: 0.w,
            bottom: 3.h,
            child: Image.asset(
              "assets/animations/treasure-chest.png",
              height: 10.h,
              width: 20.w,
            ),
          ),
        ],
      ),
    );
  }
}
