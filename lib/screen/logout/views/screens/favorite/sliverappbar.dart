import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/bottom_detail.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/detail_acc.dart';

class SlilverAppBarFavorite extends StatefulWidget {
  final ValueChanged<bool> onExpandChange;

  const SlilverAppBarFavorite({
    required this.onExpandChange,
    super.key,
  });

  @override
  _SlilverAppBarFavoriteState createState() => _SlilverAppBarFavoriteState();
}

class _SlilverAppBarFavoriteState extends State<SlilverAppBarFavorite> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 5.h,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      centerTitle: true,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            size: 25.sp,
          ),
        ),
      ],
      backgroundColor: BackgroundColor.mainColor,
      expandedHeight: isExpanded ? 38.h : 21.h,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: BackgroundColor.mainColor,
          child: Stack(
            children: [
              Positioned(
                left: 0.w,
                right: 0.w,
                child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Available Balance",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                      ),
                      Text(
                        "៛0",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Account Balance: ៛០",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                          widget.onExpandChange(isExpanded);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(
                            30,
                            3.5.h,
                          ),
                        ),
                        child: Icon(
                          isExpanded
                              ? Icons.keyboard_double_arrow_up
                              : Icons.keyboard_double_arrow_down,
                          color: Colors.white,
                          size: 16.sp,
                        ),
                      ),
                      if (isExpanded) ...[
                        const DetailAcc(
                          leftText: "Account Number",
                          rightText: "101118731",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const DetailAcc(
                          leftText: "Account Type",
                          rightText: "Savings Account",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const DetailAcc(
                          leftText: "Open Date",
                          rightText: "13 Oct 2024",
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        const BottomDetail(),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      title: Text(
        "My Account",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
