import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/world_transfer/chosse_acc.dart';

class SelectAcc extends StatelessWidget {
  const SelectAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("My Account"),
          SizedBox(
            height: 1.h,
          ),
          Bounceable(
            onTap: () {
              print("SSelect Account Clicked");
              showAccount(context);
            },
            child: Container(
              width: 100.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  const Text("101118731"),
                  const Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
