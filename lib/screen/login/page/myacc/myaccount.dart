import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/page/myacc/header.dart';
import 'package:wing_bank/screen/login/page/myacc/header_body.dart';
import 'package:wing_bank/screen/login/page/myacc/tabbar_body.dart';

class Myaccount extends StatelessWidget {
  const Myaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: Colors.blue.shade600,
          child: Icon(
            Icons.attach_file_outlined,
            color: Colors.white,
            size: 22.sp,
          ),
        ),
        backgroundColor: BackgroundColor.mainColor,
        appBar: AppBar(
          backgroundColor: BackgroundColor.mainColor,
          title: Text(
            'My Account',
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: SizedBox(
          width: 100.w,
          height: 100.h,
          child: Stack(
            children: [
              const Header(),
              Positioned(
                top: 23.h,
                bottom: 0.w,
                left: 0.w,
                right: 0.w,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: const Column(
                    children: [
                      BottomBody(),
                      TabbarBody(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
