import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/page/free_cash_out/body.dart';

class FreeCashOut extends StatefulWidget {
  const FreeCashOut({super.key});

  @override
  _FreeCashOutState createState() => _FreeCashOutState();
}

class _FreeCashOutState extends State<FreeCashOut> {
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
      expandedHeight: 20.h,
      excludeHeaderSemantics: true,
      pinned: true,
      forceElevated: false,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        title: AnimatedOpacity(
          opacity: _isTitleVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 100),
          child: Text(
            'Free Cash Out',
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
                  'FREE CASH OUT PACKAGE',
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Enjoy free Cash-Out at any Wing apents nationwide.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 0.8.h,
                    horizontal: 3.w,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.question_mark_outlined,
                          size: 16.sp,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The daily allowed amount and limit are based on\nyour account type.",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
          Body(),
        ],
      ),
    );
  }
}
