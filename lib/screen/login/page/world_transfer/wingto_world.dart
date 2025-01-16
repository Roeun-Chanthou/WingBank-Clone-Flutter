import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/page/world_transfer/country_select.dart';
import 'package:wing_bank/screen/login/page/world_transfer/select_acc.dart';

class WingtoWorld extends StatelessWidget {
  const WingtoWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          'Wing Bank to World',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20.sp,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.sp),
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.sp),
            topRight: Radius.circular(20.sp),
          ),
        ),
        child: Column(
          children: [
            SelectAcc(),
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: Text(
                "TO COUNTRY",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.grey[600],
                ),
              ),
            ),
            CountrySelect(),
            SizedBox(height: 20.sp),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[600],
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.sp,
                  vertical: 12.sp,
                ),
              ),
              onPressed: () {},
              child: Text(
                "SEND",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
