import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/world_transfer/body.dart';

class ChooseAccount extends StatefulWidget {
  const ChooseAccount({
    super.key,
  });

  @override
  State<ChooseAccount> createState() => _ChooseAccountState();
}

class _ChooseAccountState extends State<ChooseAccount> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -1.5.h,
          child: Container(
            width: 10.w,
            height: 0.5.h,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(
          height: 30.h,
          width: 100.w,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                30,
              ),
              topRight: Radius.circular(
                30,
              ),
            ),
            color: Color(0xFFF5F5F5),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
            child: BodyChooseAcc(),
          ),
        ),
      ],
    );
  }
}

void showAccount(BuildContext context) {
  showMaterialModalBottomSheet(
    context: context,
    expand: false,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return const ChooseAccount();
    },
  );
}
