import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class CardInvite extends StatelessWidget {
  const CardInvite({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(18.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton.filled(
            style: IconButton.styleFrom(
              iconSize: 30.sp,
              backgroundColor: Colors.orange[400],
            ),
            onPressed: () {},
            icon: Icon(
              Icons.person,
            ),
          ),
          SizedBox(height: 10.sp),
          Text(
            _language.inviteContactFriend,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.sp),
          Text(
            _language.inviteDescription,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            _language.moreCredit,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 15.sp),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[600],
              foregroundColor: Colors.white,
              minimumSize: Size(100.w, 28.sp),
            ),
            onPressed: () {},
            child: Text(
              _language.inviteNow,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
