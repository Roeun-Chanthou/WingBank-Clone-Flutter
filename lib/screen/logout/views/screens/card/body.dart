import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../data/data_source/language_data.dart';
import '../../../../../logic/language_logic.dart';

class BuildBodyCard extends StatefulWidget {
  const BuildBodyCard({super.key});

  @override
  State<BuildBodyCard> createState() => _BuildBodyCardState();
}

class _BuildBodyCardState extends State<BuildBodyCard> {
  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 10.h,
            child: Container(
              width: 100.w,
              height: 90.h,
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(
                  // bottom: 150,
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _language.addCard,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),
                  Text(
                    _language.cardDetail,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    _language.buttonAbouv,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 3.h,
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 17.w),
                  width: 67.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade600,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.white,
                          size: 32.sp,
                        ),
                      ),
                      Text(
                        _language.newCard,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 24.h,
            left: 47.w,
            right: 47.w,
            child: Container(
              height: 1.h,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
