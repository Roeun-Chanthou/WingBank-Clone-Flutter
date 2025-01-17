// import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:wing_bank/constants/theme.dart';
// import 'package:wing_bank/screen/login/page/login_screen/login_screen.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return FlutterSplashScreen.fadeIn(
//       backgroundColor: BackgroundColor.mainColor,
//       childWidget: SizedBox(
//         child: Image.asset(
//           "assets/logo/WingBank.png",
//           fit: BoxFit.cover,
//           width: 85.w,
//         ),
//       ),
//       duration: const Duration(milliseconds: 1500),
//       animationDuration: const Duration(milliseconds: 1000),
//       nextScreen: const LoginScreen(),
//     );
//   }
// }
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../constants/theme.dart';
import '../../../logout/views/controller/controll_screen.dart';
import '../../page/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  final bool isLoggedIn;

  const SplashScreen({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: BackgroundColor.mainColor,
      childWidget: SizedBox(
        child: Image.asset(
          "assets/logo/WingBank.png",
          fit: BoxFit.cover,
          width: 85.w,
        ),
      ),
      duration: const Duration(milliseconds: 1500),
      animationDuration: const Duration(milliseconds: 1000),
      nextScreen: isLoggedIn ? const MainScreen() : const LoginScreen(),
    );
  }
}
