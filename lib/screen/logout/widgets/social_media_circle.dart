import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Socialmediacircle extends StatelessWidget {
  const Socialmediacircle({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 7.w,
          backgroundColor: Colors.grey.withOpacity(0.2),
          child: Center(
              child: Image.asset(
            image,
            height: 6.h,
            width: 6.w,
          )),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }
}
