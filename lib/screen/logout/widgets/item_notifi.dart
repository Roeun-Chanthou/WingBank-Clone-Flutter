// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';

class ITemNotification extends StatelessWidget {
  const ITemNotification({
    super.key,
    required this.title,
    required this.date,
    required this.message,
  });

  final String title;
  final String date;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.w,
              right: 4.w,
              top: 1.h,
            ),
            child: SizedBox(
              height: 10.w,
              width: 10.w,
              child: IconButton.filled(
                iconSize: 20.sp,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    BackgroundColor.mainColor,
                  ),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 1.h,
                bottom: 1.h,
                right: 4.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16.sp,
                      fontFamily: "Kantumruy",
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16.sp,
                      fontFamily: "Kantumruy",
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15.sp,
                      fontFamily: "Kantumruy",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
