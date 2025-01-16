import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/coin/body.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/coin/header.dart';

class WingPoint extends StatelessWidget {
  const WingPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: SizedBox(
          width: 30.w,
          child: Image.asset(
            "assets/logo/WingBank.png",
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            HeaderWingCoin(),
            BodyWingCoin(),
            Expanded(
              flex: 1,
              child: Container(
                width: 100.w,
                height: 20.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/animations/poster.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
