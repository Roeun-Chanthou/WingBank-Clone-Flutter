import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class TopBody extends StatelessWidget {
  const TopBody({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Container(
      padding: EdgeInsets.all(1.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 16.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("assets/images/wingbankfield.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, right: 2.w, bottom: 2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/socialmedia/wingbank.png",
                  width: 30.w,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  _language.aboutDescription,
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
