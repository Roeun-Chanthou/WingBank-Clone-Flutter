import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/logic/language_logic.dart';

import 'screen/login/home/ main/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageLogic(),
      child: MyApp(isLoggedIn: isLoggedIn),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: BackgroundColor.mainColor,
              foregroundColor: Colors.white,
            ),
          ),
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          color: BackgroundColor.mainColor,
          themeMode: ThemeMode.dark,
          home: SplashScreen(isLoggedIn: isLoggedIn),
        );
      },
    );
  }
}
