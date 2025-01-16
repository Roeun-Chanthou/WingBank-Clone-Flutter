import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/views/about/contact.dart';
import 'package:wing_bank/screen/login/views/about/scroll_row.dart';
import 'package:wing_bank/screen/login/views/about/top_body.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Column(
      children: [
        const TopBody(),
        SizedBox(
          height: 2.h,
        ),
        const Contact(),
        SizedBox(
          height: 2.h,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.w, top: 4.w),
                child: Text(
                  _language.learnMoreABWing,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ScrollRowSocialMedia(),
            ],
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Center(
          child: Text(
            "${_language.appVersion}: 4.12.8",
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 16.sp,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }
}
