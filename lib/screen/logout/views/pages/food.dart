import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/data/models/image_promotion.dart';
import 'package:wing_bank/screen/login/home/body/promotion.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final ScrollController scrollController = ScrollController();

    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: ListView.separated(
        controller: scrollController,
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 16.sp),
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemCount: images.take(4).length,
        itemBuilder: (context, index) {
          return Promotion(
            image: images[index],
          );
        },
      ),
    );
  }
}
