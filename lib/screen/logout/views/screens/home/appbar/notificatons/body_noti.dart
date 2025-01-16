import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/notificatons/announcements.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/notificatons/transaction.dart';

class BodyNotificaion extends StatefulWidget {
  const BodyNotificaion({super.key});

  @override
  State<BodyNotificaion> createState() => _BodyNotificaionState();
}

class _BodyNotificaionState extends State<BodyNotificaion>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screeHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screeHeight,
      width: screenWidth,
      padding: EdgeInsets.only(
        top: 2.h,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          ButtonsTabBar(
            controller: _tabController,
            backgroundColor: Colors.blueAccent,
            unselectedBackgroundColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              color: Colors.grey[700],
            ),
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
            ),
            borderColor: Colors.blueAccent,
            radius: 10,
            height: 4.5.h,
            buttonMargin: EdgeInsets.symmetric(
              horizontal: 3.w,
            ),
            contentCenter: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 5,
            ),
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.transcribe_outlined,
                ),
                text: "Transactions",
              ),
              Tab(
                icon: Icon(
                  Icons.announcement_outlined,
                ),
                text: "Announcements",
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Transaction(),
                Announcements(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
