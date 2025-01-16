import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/views/settings/languages/select_lang.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      child: Bounceable(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              fullscreenDialog: true,
              builder: (context) => SelectLang(),
            ),
          );
        },
        child: Container(
          width: 100.w,
          padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 15.sp),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 22.sp,
                color: Colors.grey[600],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
