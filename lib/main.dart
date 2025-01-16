import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/logic/language_logic.dart';
import 'package:wing_bank/screen/login/home/%20main/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageLogic(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          home: const SplashScreen(),
        );
      },
    );
  }
}
