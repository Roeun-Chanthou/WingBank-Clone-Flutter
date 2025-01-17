import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/data/data_source/language_data.dart';
import 'package:wing_bank/logic/language_logic.dart';
import 'package:wing_bank/screen/login/views/about/about.dart';
import 'package:wing_bank/screen/login/views/contact_us/contact_us.dart';
import 'package:wing_bank/screen/login/views/faqs/faqs.dart';
import 'package:wing_bank/screen/login/views/locator/locator.dart';
import 'package:wing_bank/screen/login/views/refe_friend/refe_friend.dart';
import 'package:wing_bank/screen/login/views/settings/setting.dart';
import 'package:wing_bank/screen/login/views/term_condition/term_condition.dart';

class Itemdrawer extends StatefulWidget {
  const Itemdrawer({super.key});

  @override
  State<Itemdrawer> createState() => _ItemdrawerState();
}

class _ItemdrawerState extends State<Itemdrawer> {
  LanguageData _language = LanguageData();

  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                _language.home,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.home,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RefeFriend(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                _language.referFriends,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.people_alt_outlined,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyLocation(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                _language.locator,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.location_on_rounded,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const About(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                _language.about,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.fmd_bad_outlined,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FAQs(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                _language.faqs,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.contact_support_outlined,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactUs(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                _language.contactUs,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.headset,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TermCondition(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                _language.termConditions,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.comments_disabled_outlined,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        //
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Setting(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                _language.settings,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.settings,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
