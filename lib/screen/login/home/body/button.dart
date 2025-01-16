import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wing_bank/screen/login/views/about/about.dart';
import 'package:wing_bank/screen/login/views/contact_us/contact_us.dart';
import 'package:wing_bank/screen/login/views/faqs/faqs.dart';


class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final font = screenWidth * 0.032;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: Container(
            width: 120,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FAQs(),
                      ),
                    );
                  },
                  icon: Icon(MdiIcons.commentQuestionOutline),
                  iconSize: 30,
                  color: Colors.grey,
                ),
                Text(
                  'FAQs',
                  style: TextStyle(
                    fontSize: font,
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(
            width: 120,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUs()),
                    );
                  },
                  icon: const Icon(Icons.contact_mail_outlined),
                  iconSize: 30,
                  color: Colors.grey,
                ),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: font,
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(
            width: 120,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const About(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.account_circle_outlined),
                  iconSize: 30,
                  color: Colors.grey,
                ),
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: font,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
