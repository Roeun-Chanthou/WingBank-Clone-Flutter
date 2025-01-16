import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class ButtonTransfer extends StatelessWidget {
  const ButtonTransfer({
    super.key,
    required this.imageIcon,
    required this.text,
  });

  final String imageIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final imageWidth = screenWidth * 0.25;

    final responsiveFontSize = screenWidth * 0.04;

    return Bounceable(
      onTap: () {
        print('Button Transfer');
      },
      child: Container(
        height: screenHeight * 0.078,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            SizedBox(
              width: imageWidth, // ទទឹងរូបភាពរូបភាព
              child: Image.asset(
                imageIcon,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: responsiveFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
