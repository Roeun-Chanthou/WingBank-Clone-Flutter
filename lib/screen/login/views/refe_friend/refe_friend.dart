import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/views/refe_friend/card_invite.dart';
import 'package:wing_bank/screen/login/views/refe_friend/card_refer.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class RefeFriend extends StatelessWidget {
  const RefeFriend({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          _language.referFriend,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
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
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0xFFF5F5F5),
        ),
        padding: EdgeInsets.all(15.sp),
        child: Column(
          children: [
            CardRefer(),
            SizedBox(height: 15.sp),
            CardInvite(),
          ],
        ),
      ),
    );
  }
}
