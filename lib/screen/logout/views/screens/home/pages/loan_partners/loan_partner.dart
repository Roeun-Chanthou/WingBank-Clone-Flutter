import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';

class LoanPartner extends StatefulWidget {
  const LoanPartner({super.key});

  @override
  State<LoanPartner> createState() => _LoanPartnerState();
}

class _LoanPartnerState extends State<LoanPartner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Partner Loan Request',
        ),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        color: Colors.grey.shade600,
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp,
          vertical: 20.sp,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                elevation: 20,
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(12.sp),
                        child: Text(
                          'We are sorry',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: BackgroundColor.mainColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 0.2.w,
                      height: 0,
                      color: Colors.grey.shade400,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.sp,
                        right: 20.sp,
                        bottom: 30.sp,
                        top: 12.sp,
                      ),
                      child: Text(
                        "Your area is not applicable for loan request. Stay tune! For more detail pleas contact our call center via 023 999 989 or 012 999 489.",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
