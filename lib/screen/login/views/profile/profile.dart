import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/components/widgets/profile_card.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/data/data_source/list_profile.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        title: Text(
          _language.profile,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
        backgroundColor: BackgroundColor.mainColor,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20.sp,
        ),
        centerTitle: true,
        toolbarHeight: 5.h,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 3.h,
            left: 35.w,
            right: 35.w,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(1.w),
              child: Container(
                width: 25.w,
                height: 25.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/profile/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30.h,
            bottom: 0.h,
            right: 0,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Color(0xFFF5F5F5),
              ),
            ),
          ),
          Positioned(
            top: 20.h,
            left: 2.w,
            right: 2.w,
            bottom: 9.h,
            child: Container(
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: getProfileInfo(context).length,
                  itemBuilder: (context, index) {
                    final item = getProfileInfo(context)[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (index == 0)
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 2.w,
                              top: 2.w,
                            ),
                            child: Center(
                              child: Text(
                                _language.personalInformation,
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ProfileCard(
                          icon: item["icon"] as IconData,
                          title: item["title"]!,
                          detail: item["detail"]!,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
