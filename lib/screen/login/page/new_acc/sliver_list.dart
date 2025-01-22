import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/components/widgets/card_bottom.dart';
import 'package:wing_bank/components/widgets/card_new_account.dart';

class SliverListItem extends StatelessWidget {
  const SliverListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      color: Color(0xFFF5F5F5),
      padding: EdgeInsets.all(4.w),
      child: Column(
        children: [
          CardNewAccount(
            color: Colors.white,
            bgColor: Colors.blue.shade400,
            icon: "assets/svg/Saving Piggy Bank.png",
            title: "Save For Goal",
            datail:
                "Save for anything you want and earn interest rate up to 5.00% p.a. plus a special offer for your goal",
          ),
          SizedBox(
            height: 1.h,
          ),
          CardNewAccount(
            color: Colors.white,
            bgColor: Colors.purple.shade400,
            icon: "assets/svg/Term Deposit Icon.png",
            title: "Term Depost",
            datail:
                "Save for anything you want and earn interest rate up to 5.00% p.a. plus a",
          ),
          SizedBox(
            height: 1.h,
          ),
          CardNewAccount(
            color: Colors.white,
            bgColor: Colors.blue.shade600,
            icon: "assets/svg/Saving Account Icon.png",
            title: "Saving Accunt",
            datail:
                "Save for anything you want and earn interest rate up to 5.00% p.a. plus a",
          ),
          SizedBox(
            height: 1.h,
          ),
          CardNewAccount(
            color: Colors.white,
            bgColor: Colors.orange,
            icon: "assets/svg/Saving Account Icon.png",
            title: "Current Account",
            datail:
                "Save for anything you want and earn interest rate up to 5.00% p.a. plus a",
          ),
          SizedBox(
            height: 1.h,
          ),
          const CardBottom(),
        ],
      ),
    );
  }
}
