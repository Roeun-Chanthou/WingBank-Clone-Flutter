import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class CardRefer extends StatelessWidget {
  const CardRefer({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _language.referApp,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.sp),
          Text(
            _language.referDescription,
            style: TextStyle(
              fontSize: 14.5.sp,
              color: Colors.grey[900],
            ),
          ),
          SizedBox(height: 15.sp),
          Container(
            width: 100.w,
            height: 20.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.sp),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/localtransfer.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20.sp),
          Text(
            _language.yourReferralCode,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12.sp),
          Container(
            width: 100.w,
            padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 18.sp),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Text(
                  _language.code,
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.blue[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.my_library_books_rounded,
                  size: 18.sp,
                  color: Colors.blue[600],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
