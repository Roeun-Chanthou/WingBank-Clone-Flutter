import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        centerTitle: true,
        title: Text(
          _language.termConditions,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20.sp,
        ),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.sp),
            topRight: Radius.circular(20.sp),
          ),
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: 15.sp,
            horizontal: 20.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "TERMS OF USE",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "WING BANK APP",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Last Updated: 23 June, 2022",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              Text(
                "IT IS IMPORTANT THAT YOU READ CAREFULLY AND UNDERSTAND THE FOLLOWING TRMS FOR USING THIS WING BANK APP.",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.sp),
              Text(
                "1. APPLICATION AND ACCEPTANCE",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                "This website is operated by Wing Bank (Cambodia) Plc. (“Wing Bank”) under the domain name www.wingbank.com.kh (“website”).​ These terms of use govern your access to the website, use of information, graphics and contents on the website. By accessing to this website, you agree to be bound by these terms of use. Thus, it is important that you read and understand these terms of use before using this website. Wing Bank reserves the right to change, modify, add or remove any part of these terms of use at any time. If you do not agree with any term and its following amendments herein, your sole and exclusive remedy is to exit and stop using this website.",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 20.sp),
              Text(
                "2. INTELLECTUAL PROPERTY",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                "The website contains trademark, text, design, graphics, data, website layout, videos, software, image and other materials in nature whatsoever (“intellectual property”). The intellectual property vested on this website is owned and/or licensed by Wing Bank.",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 20.sp),
              Text(
                "3. LINKS TO THIRD PARTY SITES",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                "This website may contain links to sites controlled or offered by third parties. The links are only provided as a convenience or additional offer which you may elect to access or use such sites or purchase product and service offered on such site at your sole discretion. Wing Bank does not endorse or recommend any product or service offered by or information contained in any of these third-party sites. Wing Bank hereby disclaims all liabilities for all information, materials, products or services posted, offered or that may be accessed at any of the third-party websites linked to this website. Wing Bank makes no representation regarding the quality of any product or service contained at any such third-party website. Further, Wing Bank hereby disclaims all liabilities for any failure of products or services offered or advertised at those third-party websites.",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 20.sp),
              Text(
                "4. DISCLAIMER",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                "The information contained on this website is for general information purpose only. While we endeavour to keep the information up to date and correct, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services or related graphics contained on this website for any purpose. Wing Bank may amend, withdraw or add services and products at any time at its own discretion without notice to you. You acknowledge the risk for relying on the information placed on this website.\nThis website does not constitute or mean to constitute any kind of advice. Wing Bank recommends you to seek professional advice, communication, and clarification from Wing Bank before you attempt to use the information, services and products in question. You may attend to our nearest bank branch or make a call through 023 999 989 at your convenience.\nEvery effort is made to keep the website up and running smoothly. However, Wing Bank takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our reasonable control.\ning Bank shall not be liable for and in respect of any loss or damage whether direct, indirect or consequential, including but not limited to loss of revenue, profit, business, contracts, anticipated savings or goodwill, suffered by you or whoever arising from or relating to the use of this website.",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 20.sp),
              Text(
                "5. GOVERNING LAW AND DISPUTE RESOLUTION",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                "These terms and conditions are governed and construed in accordance with the laws of the Kingdom of Cambodia.\nAll disputes, controversies or differences which may arise in connection with the implementation of these terms of use shall be settled through amicable negotiation. If the parties fail to reach the agreement, the dispute case shall be brought to the exclusive court of Cambodia.",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 20.sp),
            ],
          ),
        ),
      ),
    );
  }
}
