import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/views/faqs/item_body.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class FAQs extends StatelessWidget {
  const FAQs({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          _language.faqs,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        toolbarHeight: 5.h,
      ),
      body: Container(
        width: 100.w,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 5.h),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: const ItemFAQs(),
          ),
        ),
      ),
    );
  }
}
