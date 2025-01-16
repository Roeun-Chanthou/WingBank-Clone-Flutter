import 'package:flutter/material.dart';
import 'package:wing_bank/data/models/image_promotion.dart';
import 'package:wing_bank/screen/login/home/body/promotion.dart';

class AllPromotion extends StatelessWidget {
  const AllPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final ScrollController scrollController = ScrollController();

    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: SingleChildScrollView(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(vertical: 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: images.map(
            (imagePath) {
              return Column(
                children: [
                  Promotion(image: imagePath),
                  const SizedBox(height: 10),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
