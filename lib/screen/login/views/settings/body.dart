import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/views/settings/enable_button.dart';
import 'package:wing_bank/screen/login/views/settings/select_language.dart';
import 'package:wing_bank/screen/login/views/settings/select_time.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class BodySetting extends StatefulWidget {
  const BodySetting({super.key});

  @override
  State<BodySetting> createState() => _BodySettingState();
}

class _BodySettingState extends State<BodySetting> {
  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            child: Center(
              child: Text(
                _language.general,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 12.sp),
            child: Text(
              _language.changeLanguage,
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
          ),
          SelectLanguage(
            name: _language.language,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.sp, top: 18.sp),
            child: Text(
              _language.generateCode,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: Divider(
              color: Colors.grey[200],
            ),
          ),
          EnableButton(name: _language.enable),
          SizedBox(
            height: 20.sp,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.sp, bottom: 10.sp),
            child: Text(_language.pinSession),
          ),
          SelectTime(
            name: "60 ${_language.seconds}",
          ),
          SizedBox(
            height: 18.sp,
          ),
          Container(
            width: 100.w,
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            child: Center(
              child: Text(
                _language.account,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.sp),
          EnableButton(name: _language.loginFAce),
          SizedBox(height: 15.sp),
        ],
      ),
    );
  }
}
