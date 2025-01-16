import 'package:flutter/material.dart';

class CardParnter extends StatelessWidget {
  const CardParnter({
    super.key,
    required this.imageCard,
  });

  final String imageCard;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.28,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(40),
        ),
        color: Colors.grey.shade300,
        image: DecorationImage(
          image: AssetImage(
            imageCard,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
