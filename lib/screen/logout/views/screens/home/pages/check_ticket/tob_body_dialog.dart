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
              "All information on the wingbank.com.kh website is published in good faith and for general information purposes only. Wing Bank makes no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore strictly at your own risk. In no event will Wing Bank be liable for any loss or damage including, without limitation, indirect or consequential loss or damage,",
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
