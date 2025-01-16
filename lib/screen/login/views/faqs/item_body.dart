import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class ItemFAQs extends StatelessWidget {
  const ItemFAQs({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _language.one,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerOne,
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        Text(
          _language.two,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerTwo,
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        Text(
          _language.three,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerThree,
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        Text(
          _language.four,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerFour,
          style: TextStyle(fontSize: 16.sp),
        ),

        SizedBox(height: 2.h),
        // Title
        Text(
          _language.five,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerFive,
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        // Title
        Text(
          _language.six,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerSix,
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        // Title
        Text(
          _language.seven,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerSeven,
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        // Title
        Text(
          _language.eight,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerEight,
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.sp),
        // Title
        Text(
          _language.nine,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          _language.answerNine,
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
