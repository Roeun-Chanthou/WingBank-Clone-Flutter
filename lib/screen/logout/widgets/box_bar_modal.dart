import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../views/screens/home/pages/check_ticket/showdialog.dart';

class BoxBarModal extends StatelessWidget {
  BoxBarModal({
    super.key,
    required this.image,
  });
  String image;
  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return MyDailog();
          },
        );
      },
      child: Container(
        width: 42.5.w,
        height: 11.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15,
          ),
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
