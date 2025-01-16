import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/coin/splash_coin.dart';

class BottomBody extends StatelessWidget {
  const BottomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 6.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 3.5.w,
            backgroundImage:
                const AssetImage("assets/animations/wingcoin-v3.png"),
          ),
          SizedBox(
            width: 4.w,
          ),
          Text(
            "Wingpoints:",
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[600],
            ),
          ),
          Text(
            " 0",
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Bounceable(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SplashCoin(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue.shade700,
              size: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
