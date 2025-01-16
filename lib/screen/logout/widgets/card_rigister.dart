import 'package:flutter/material.dart';
import 'package:wing_bank/constants/theme.dart';

class CardRegister extends StatelessWidget {
  const CardRegister({
    super.key,
    required this.title,
    required this.descrption,
    required this.getStart,
    required this.image,
    required this.color,
  });

  final String title;
  final String descrption;
  final String getStart;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFontdescripe = screenWidth * 0.035;
    final responsiveFontTitle = screenWidth * 0.04;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: screenHeight * 0.32,
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: Stack(
            children: [
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: responsiveFontTitle,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      descrption,
                      style: TextStyle(fontSize: responsiveFontdescripe),
                    ),
                    SizedBox(height: screenHeight * 0.09),
                    Row(
                      children: [
                        Text(
                          getStart,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: color,
                            fontSize: responsiveFontdescripe,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: BackgroundColor.mainColor,
                          size: 25,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -30,
                bottom: 0,
                left: 200,
                top: 70,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    image,
                    width: 220,
                    height: 230,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
