import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/home/%20main/show_info_dialog.dart';
import 'package:wing_bank/screen/login/page/more/register_new_acc.dart';

import '../../page/login_screen/signin.dart';

class BuildSliverAppBar extends StatelessWidget {
  const BuildSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SliverAppBar(
      toolbarHeight: 45,
      pinned: true,
      backgroundColor: BackgroundColor.mainColor,
      expandedHeight: screenHeight * 0.24,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: BackgroundColor.mainColor,
          child: Stack(
            children: [
              Positioned(
                top: screenHeight * 0.14,
                left: screenWidth * 0.03,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenWidth * 0.095,
                      width: screenWidth * 0.22,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signin(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const FittedBox(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: screenWidth * 0.095,
                      width: screenWidth * 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterNewAccount(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade700,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const FittedBox(
                          child: Text(
                            "REGISTER NEW ACCOUNT",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: screenHeight * 0.108,
                right: 2,
                bottom: 0,
                child: Image.asset(
                  "assets/logo/wing_bank_tower.png",
                  width: screenWidth * 0.41,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
      title: Row(
        children: [
          Image.asset(
            "assets/logo/WingBank.png",
            width: screenWidth * 0.34,
            height: screenHeight * 0.045,
            fit: BoxFit.cover,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const LanguageDialog();
                },
              );
            },
            child: Container(
              height: screenHeight * 0.04,
              width: screenWidth * 0.23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "English",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateZ(pi / 2),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(26),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          width: double.maxFinite,
          child: Container(
            height: 20,
          ),
        ),
      ),
    );
  }
}
