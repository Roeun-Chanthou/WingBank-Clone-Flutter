import 'package:flutter/material.dart';
import 'package:wing_bank/screen/login/page/phone_topup/row_card.dart';

class CardPhone extends StatelessWidget {
  const CardPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 27.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.zero,
      child: const GridCard(),
    );
  }
}
