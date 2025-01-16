import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../world_transfer/chosse_acc.dart';

class CardSubscrabe extends StatelessWidget {
  const CardSubscrabe({
    super.key,
    required this.standard,
    required this.price,
    required this.descriptionOne,
    required this.descriptionTwo,
  });

  final String standard;
  final String price;
  final String descriptionOne;
  final String descriptionTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              standard,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.blueGrey[600],
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  "\$$price",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 2.w),
                Text(
                  "per year",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  "Billed Annually",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.blue.shade700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            Text(
              "•  $descriptionOne",
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[700],
              ),
            ),
            Text(
              "•  $descriptionTwo",
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 1.w),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[600],
                foregroundColor: Colors.white,
                minimumSize: Size(2.w, 4.h),
              ),
              onPressed: () {
                showAccount(context);
              },
              child: Text(
                "SUBSCRIBE",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
