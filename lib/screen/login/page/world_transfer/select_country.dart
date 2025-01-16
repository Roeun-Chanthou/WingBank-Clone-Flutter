import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/world_transfer/item_country.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({
    super.key,
  });

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.h,
      width: 100.w,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            15,
          ),
          topRight: Radius.circular(
            15,
          ),
        ),
        color: Color(0xFFF5F5F5),
      ),
      padding: EdgeInsets.only(
        top: 15.sp,
      ),
      child: Stack(
        children: [
          ItemCountry(),
          Positioned(
            top: 0,
            left: 18.sp,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                "assets/svg/cross-small.svg",
                width: 22.sp,
                height: 22.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showCountry(BuildContext context) {
  showMaterialModalBottomSheet(
    context: context,
    expand: false,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return const ChooseCountry();
    },
  );
}
