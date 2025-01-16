import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/page/new_acc/sliver_list.dart';

class Newaccount extends StatefulWidget {
  const Newaccount({super.key});

  @override
  _NewaccountState createState() => _NewaccountState();
}

class _NewaccountState extends State<Newaccount> {
  bool _isTitleVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification.metrics.pixels > 100 && !_isTitleVisible) {
            setState(() {
              _isTitleVisible = true;
            });
          } else if (scrollNotification.metrics.pixels <= 100 &&
              _isTitleVisible) {
            setState(
              () {
                _isTitleVisible = false;
              },
            );
          }
          return true;
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            _buildSliverAppBar(),
            _buildSliverList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      backgroundColor: BackgroundColor.mainColor,
      expandedHeight: 16.h,
      excludeHeaderSemantics: true,
      pinned: true,
      forceElevated: false,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        title: AnimatedOpacity(
          opacity: _isTitleVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 100),
          child: Text(
            'New Account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        background: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              top: 5.h,
              left: 5.w,
              right: 5.w,
            ),
            color: BackgroundColor.mainColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Account',
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'You can open a new account and have access to your funds just in seconds.',
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ],
            ),
          ),
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.sp,
      ),
    );
  }

  Widget _buildSliverList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const SliverListItem(),
        ],
      ),
    );
  }
}
