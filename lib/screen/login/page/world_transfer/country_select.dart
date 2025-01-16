import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/world_transfer/select_country.dart';

class CountrySelect extends StatelessWidget {
  const CountrySelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 1.h,
          ),
          Bounceable(
            onTap: () {
              print("Select Country Clicked");
              showCountry(context);
            },
            child: Container(
              width: 100.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  Icon(
                    IcoFontIcons.world,
                    size: 22.sp,
                    color: Colors.blue[600],
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    "Select Country",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    MdiIcons.pencil,
                    size: 18.sp,
                    color: Colors.blue[600],
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
