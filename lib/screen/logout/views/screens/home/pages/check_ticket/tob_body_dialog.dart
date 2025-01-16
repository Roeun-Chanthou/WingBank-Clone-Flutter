import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TobBodyDialog extends StatelessWidget {
  const TobBodyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.sp),
                child: Text(
                  "Disclaimer",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Text(
              "We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket (by) We are happy to redirect you to Camboticket",
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
