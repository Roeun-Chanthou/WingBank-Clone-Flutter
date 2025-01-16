import 'package:flutter/material.dart';
import 'package:wing_bank/components/widgets/button_transfer.dart';
import 'package:wing_bank/constants/theme.dart';

class LocalTransfer extends StatelessWidget {
  const LocalTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: BackgroundColor.mainColor,
        title: const Text(
          'Local Transfer',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.235,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/localtransfer.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.21,
              bottom: 0,
              child: Container(
                width: screenWidth,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      25,
                    ),
                    topRight: Radius.circular(
                      25,
                    ),
                  ),
                  color: Color(0xFFF5F5F5),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(
                    20,
                  ),
                  child: Column(
                    children: [
                      ButtonTransfer(
                        imageIcon: "assets/images/own.png",
                        text: "Transfer to Own Account",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonTransfer(
                        imageIcon: "assets/images/wingtowing.png",
                        text: "Wing Bank to Wing Bank",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonTransfer(
                        imageIcon: "assets/images/wingtoother.png",
                        text: "Wing Bank to Other Bank",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonTransfer(
                        imageIcon: "assets/images/wingweiluy.png",
                        text: "Wing Wei Luy",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonTransfer(
                        imageIcon: "assets/images/trading.png",
                        text: "Trading Account",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
