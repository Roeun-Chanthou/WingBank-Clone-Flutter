import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/page/phone_topup/card_phone.dart';
import 'package:wing_bank/screen/login/page/phone_topup/number_acc.dart';
import 'package:wing_bank/screen/login/page/phone_topup/phone_number.dart';

class Topup extends StatelessWidget {
  const Topup({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: BackgroundColor.mainColor,
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          backgroundColor: BackgroundColor.mainColor,
          title: Text(
            'Phone Top Up',
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 20.sp,
          ),
        ),
        body: Container(
          color: BackgroundColor.mainColor,
          child: Container(
            width: 100.w,
            height: 100.h,
            padding: EdgeInsets.all(4.w),
            decoration: const BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 100.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ButtonsTabBar(
                    backgroundColor: BackgroundColor.mainColor,
                    unselectedBackgroundColor: Colors.white,
                    unselectedLabelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                    radius: 10,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 5.1.w,
                    ),
                    buttonMargin:
                        EdgeInsets.symmetric(vertical: 1.w, horizontal: 1.w),
                    contentCenter: true,
                    tabs: const [
                      Tab(
                        text: "Phone Number",
                        icon: Icon(Icons.phone_iphone_outlined),
                      ),
                      Tab(
                        text: "Buy a Voucher",
                        icon: Icon(Icons.calendar_view_day_sharp),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.5.h),
                Expanded(
                  child: (TabBarView(
                    children: [
                      Column(
                        children: [
                          NumberAcc(),
                          Padding(
                            padding: EdgeInsets.all(2.0.w),
                            child: Text(
                              "TOP UP TO",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          PhoneNumber(),
                        ],
                      ),
                      Column(
                        children: [
                          NumberAcc(),
                          Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Text(
                              "TOP UP TO",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          CardPhone(),
                        ],
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
