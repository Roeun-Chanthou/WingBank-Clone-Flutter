import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/data/data_source/list_wingcoin.dart';

class BodyWingCoin extends StatelessWidget {
  const BodyWingCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Color(0xFFF5F5F5),
        width: 100.w,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(3.w),
          itemCount: wingcoin.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final item = wingcoin[index];
            return Card(
              color: Colors.white,
              elevation: 0.1,
              shadowColor: Colors.white,
              child: Container(
                padding: EdgeInsets.all(3.w),
                child: Row(
                  children: [
                    Container(
                      width: 15.w,
                      margin: EdgeInsets.only(right: 3.w),
                      child: item.image.isNotEmpty
                          ? Image.asset(
                              item.image,
                              width: 15.w,
                              height: 12.w,
                            )
                          : Icon(
                              FontAwesomeIcons.solidCircleQuestion,
                              size: 7.w,
                              color: Colors.grey,
                            ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (item.subti.isNotEmpty)
                          Text(
                            item.subti,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[500],
                            ),
                          ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.sp,
                        color: Colors.blue.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
