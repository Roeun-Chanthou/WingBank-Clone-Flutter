import 'dart:async';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/home/body/promotion.dart';

class PromotionItem extends StatefulWidget {
  const PromotionItem({super.key});

  @override
  _PromotionItemState createState() => _PromotionItemState();
}

class _PromotionItemState extends State<PromotionItem> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlider();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoSlider() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentIndex < 24) {
        setState(() {
          _currentIndex++;
        });
      } else {
        setState(() {
          _currentIndex = 0;
        });
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<String> images = [
      "assets/poster/1.png",
      "assets/poster/2.png",
      "assets/poster/3.png",
      "assets/poster/4.png",
      "assets/poster/5.png",
      "assets/poster/6.png",
      "assets/poster/7.png",
      "assets/poster/8.png",
      "assets/poster/9.png",
      "assets/poster/10.png",
      "assets/poster/11.png",
      "assets/poster/12.png",
      "assets/poster/13.png",
      "assets/poster/14.png",
      "assets/poster/15.png",
      "assets/poster/16.png",
      "assets/poster/17.png",
      "assets/poster/18.png",
      "assets/poster/19.png",
      "assets/poster/20.png",
      "assets/poster/21.png",
      "assets/poster/22.png",
      "assets/poster/23.png",
      "assets/poster/24.png",
      "assets/poster/25.png",
    ];

    return SizedBox(
      height: 14.h,
      child: PageView.builder(
        controller: _pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            child: Promotion(image: images[index]),
          );
        },
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
