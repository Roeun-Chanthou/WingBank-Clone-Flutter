import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/coin/wing_point.dart';

class SplashCoin extends StatelessWidget {
  const SplashCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: const Color(0xFFF5F5F5),
      childWidget: SizedBox(
        height: 200,
        child: Image.asset(
          "assets/animations/wingcoin-v3.png",
        ),
      ),
      duration: const Duration(milliseconds: 1500),
      animationDuration: const Duration(milliseconds: 1000),
      nextScreen: const WingPoint(),
    );
  }
}
