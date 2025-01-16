import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/views/about/contact.dart';
import 'package:wing_bank/screen/login/views/about/scroll_row.dart';
import 'package:wing_bank/screen/login/views/contact_us/map.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          _language.contactUs,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 5.h,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        color: const Color(0xFFF5F5F5),
        width: 100.w,
        height: 100.h,
        padding: EdgeInsets.only(
          left: 2.w,
          right: 2.w,
        ),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(top: 1.5.h),
          child: Column(
            children: [
              const MapBody(),
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
                height: 5.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
