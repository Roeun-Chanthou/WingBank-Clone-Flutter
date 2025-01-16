import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/widgets/box_bar_modal.dart';

class CustomBottomSheetContent extends StatelessWidget {
  const CustomBottomSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -1.h,
          child: Container(
            width: 8.w,
            height: 0.5.h,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 1.w),
          height: 55.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                30,
              ),
              topRight: Radius.circular(
                30,
              ),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Explore Partners',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoxBarModal(
                      image: "assets/partner/2024-12-20 21.37.08.jpg",
                    ),
                    BoxBarModal(
                      image: "assets/partner/2024-12-20 21.37.17.jpg",
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoxBarModal(
                        image: "assets/partner/2024-12-20 21.37.21.jpg"),
                    BoxBarModal(
                        image: "assets/partner/2024-12-20 21.37.25.jpg"),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  'For Business',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoxBarModal(
                        image: "assets/partner/2024-12-20 21.37.34.jpg"),
                    BoxBarModal(
                        image: "assets/partner/2024-12-20 21.37.39.jpg"),
                  ],
                ),
                SizedBox(height: 1.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void showCustomBottomSheet(BuildContext context) {
  showMaterialModalBottomSheet(
    context: context,
    expand: false,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return const CustomBottomSheetContent();
    },
  );
}
