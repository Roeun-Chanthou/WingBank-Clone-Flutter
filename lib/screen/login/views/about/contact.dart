import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _language.contactUs,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Container(
            padding: EdgeInsets.all(1.5.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue.shade700,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.blue.shade700,
                  size: 20.sp,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "${_language.call} 023 999 989",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Container(
            padding: EdgeInsets.all(1.5.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue.shade700,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.blue.shade700,
                  size: 20.sp,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "${_language.call} 023 999 989",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Container(
            padding: EdgeInsets.all(1.5.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue.shade700,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.blue.shade700,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 1.h,
                ),
                Text(
                  "${_language.call} 012 999 489",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Container(
            padding: EdgeInsets.all(1.5.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue.shade700,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.blue.shade700,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  _language.careCentre,
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
