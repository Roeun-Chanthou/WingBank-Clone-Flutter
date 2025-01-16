import 'package:flutter/material.dart';
import 'package:wing_bank/constants/theme.dart';

class Circletopup extends StatelessWidget {
  const Circletopup({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    final screeHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFontSize = screenWidth * 0.04;
    return CircleAvatar(
      radius: screeHeight * 0.038,
      backgroundColor: BackgroundColor.mainColor,
      child: Text(
        price,
        style: TextStyle(
          color: Colors.white,
          fontSize: responsiveFontSize,
          fontWeight: FontWeight.bold,
        ), 
      ),
    );
  }
}
