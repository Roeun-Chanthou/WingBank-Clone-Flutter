import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Bounceable(
      scaleFactor: 0.5,
      onTap: () {},
      child: Container(
        height: screenHeight * 0.15,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
