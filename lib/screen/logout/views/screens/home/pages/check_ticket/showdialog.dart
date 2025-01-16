import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/views/screens/home/pages/check_ticket/tob_body_dialog.dart';

class MyDailog extends StatelessWidget {
  MyDailog({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15.sp,
        vertical: 20.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          TobBodyDialog(),
          Container(
            width: 100.w,
            height: 0.1.w,
            color: Colors.grey,
          ),
          Container(
            height: 6.h,
            width: 100.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 0.1.w,
                  height: 6.h,
                  color: Colors.grey,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Accepte",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue[600],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
