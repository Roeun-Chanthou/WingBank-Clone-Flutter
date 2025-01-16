import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/bill_payment/body_card.dart';
import 'package:wing_bank/screen/login/page/bill_payment/search.dart';

class BodyBillPayment extends StatelessWidget {
  const BodyBillPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25.h,
      bottom: 0.h,
      child: Container(
        width: 100.w,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              10,
            ),
            topRight: Radius.circular(
              10,
            ),
          ),
          color: Color(0xFFF5F5F5),
        ),
        padding: EdgeInsets.only(
          top: 2.h,
          left: 3.w,
          right: 3.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SearchHeader(),
            SizedBox(
              height: 2.h,
            ),
            const BodyCard(),
          ],
        ),
      ),
    );
  }
}
