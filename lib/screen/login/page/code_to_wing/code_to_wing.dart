import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/page/code_to_wing/card_item.dart';

class CodeToWing extends StatelessWidget {
  const CodeToWing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          'Code to Wing',
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        ),
        toolbarHeight: 5.h,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20.sp,
        ),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        padding: EdgeInsets.all(
          5.w,
        ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Color(0xFFF5F5F5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wei Luy Xpress",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CardItem(
              title: "Wing",
              image: "assets/profile/image copy 4.png",
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "International Remitance",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CardItem(
              title: "Western Union",
              image: "assets/profile/image copy 3.png",
            ),
            SizedBox(
              height: 2.h,
            ),
            CardItem(
              title: "MoneyGram",
              image: "assets/profile/image copy 2.png",
            ),
            SizedBox(
              height: 2.h,
            ),
            CardItem(
              title: "Ria",
              image: "assets/profile/image copy.png",
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Partner's Redemption",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CardItem(
              title: "My Boy",
              image: "assets/profile/image.png",
            ),
          ],
        ),
      ),
    );
  }
}
