import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Boxloan extends StatelessWidget {
  const Boxloan({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.detail,
  });

  final String image;
  final String title;
  final String description;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.only(left: 1.w, right: 1.w, bottom: 1.h, top: 1.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100.w,
            height: 14.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade200,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 1.h, bottom: 1.h, left: 2.w, right: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 19.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.w),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 2.5.w,
                          backgroundImage: const AssetImage(
                            "assets/icons/Blue_question_mark_icon.svg.png",
                          ),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "FAQs",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Text(
              description,
              style: TextStyle(color: Colors.grey[700], fontSize: 15.sp),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Row(
              children: [
                Text(
                  "Ideal for: ",
                  style: TextStyle(fontSize: 15.sp),
                ),
                Text(
                  detail,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.blue.shade700,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
