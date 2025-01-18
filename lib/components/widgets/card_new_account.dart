import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardNewAccount extends StatelessWidget {
  const CardNewAccount({
    super.key,
    required this.icon,
    required this.title,
    required this.datail,
    required this.bgColor,
    required this.color,
  });

  final String icon;
  final String title;
  final String datail;
  final Color bgColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Bounceable(
        onTap: () {},
        child: Card(
          elevation: 0.5,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(
              left: 3.w,
              top: 3.w,
              bottom: 3.w,
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(),
                    SizedBox(width: 14.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            datail,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.sp,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 10.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: bgColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      icon,
                      color: color,
                      width: 19.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
