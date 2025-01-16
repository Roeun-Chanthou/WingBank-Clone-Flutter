import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/item_body_tabbar.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/sliverappbar.dart';

import '../../../../../data/data_source/language_data.dart';
import '../../../../../logic/language_logic.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool isAppBarExpanded = false;

  void _handleExpandChange(bool isExpanded) {
    setState(() {
      isAppBarExpanded = isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: BackgroundColor.mainColor,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SlilverAppBarFavorite(onExpandChange: _handleExpandChange),
            SliverToBoxAdapter(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 0),
                width: 100.w,
                height: isAppBarExpanded ? 61.h : 78.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xFFF5F5F5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100.w,
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                      ),
                      child: Container(
                        height: 5.h,
                        child: Row(
                          children: [
                            ButtonsTabBar(
                              backgroundColor: Colors.blueAccent,
                              unselectedBackgroundColor: Colors.white,
                              unselectedLabelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              labelStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              borderColor: Colors.blueAccent,
                              radius: 10,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 3.w,
                              ),
                              height: 4.5.h,
                              tabs: [
                                Tab(text: _language.all),
                                Tab(text: "Deposit"),
                                Tab(text: "Withdrawal"),
                              ],
                            ),
                            const Spacer(),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[50],
                                foregroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                minimumSize: Size(60, 4.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 2.w,
                                ),
                              ),
                              onPressed: () {},
                              label: Text(
                                "Custom",
                                style: TextStyle(fontSize: 15.sp),
                              ),
                              icon: Icon(
                                Icons.calendar_month,
                                size: 18.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          ItemBodyTabbar(),
                          ItemBodyTabbar(),
                          ItemBodyTabbar(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
