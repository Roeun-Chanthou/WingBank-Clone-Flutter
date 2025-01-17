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
        color: Colors.grey.shade500,
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
                        padding: EdgeInsets.all(10.sp),
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
                        left: 18.sp,
                        right: 18.sp,
                        bottom: 30.sp,
                        top: 12.sp,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your area is not applicable for loan request. Stay tune! For more detail pleas contact our",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "call center via ",
                              ),
                              Text(
                                "023 999 989 ",
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text("or "),
                              Text(
                                "012 999 489",
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
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
