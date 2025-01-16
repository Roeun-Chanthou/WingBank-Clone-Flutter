import 'package:flutter/material.dart';
import 'package:wing_bank/screen/login/page/more/register_new_acc.dart';

class CardNormal extends StatelessWidget {
  const CardNormal({
    super.key,
    required this.icon,
    required this.title,
    required this.datail,
  });

  final IconData icon;
  final String title;
  final String datail;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFontTitle = screenWidth * 0.035;
    final responsiveFont = screenWidth * 0.034;
    return SizedBox(
      height: screenHeight * 0.108,
      width: screenWidth,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterNewAccount(),
            ),
          );
        },
        child: Card(
          color: Colors.white,
          elevation: 0.5,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 0,
                    right: 0,
                    bottom: 30,
                  ),
                  child: Container(
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.1,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: responsiveFontTitle,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        datail,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: responsiveFont,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterNewAccount(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
