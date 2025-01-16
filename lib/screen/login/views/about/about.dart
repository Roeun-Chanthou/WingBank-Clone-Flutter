import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/views/about/body.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          _language.about,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.sp,
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
        padding: EdgeInsets.only(
          left: 3.w,
          right: 3.w,
        ),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(
            top: 3.h,
          ),
          child: const Body(),
        ),
      ),
    );
  }
}
