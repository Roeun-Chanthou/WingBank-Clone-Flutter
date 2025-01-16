import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/free_cash_out/card_subscrabe.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Column(
        children: [
          CardSubscrabe(
            standard: "Standard",
            price: "5",
            descriptionOne: "yearly free cash-out limit up to USD 10,000",
            descriptionTwo: "Free cash-out up to 5 times/day and 60 times/year",
          ),
          CardSubscrabe(
            standard: "Sliver",
            price: "10",
            descriptionOne: "yearly free cash-out limit up to USD 20,000",
            descriptionTwo:
                "Free cash-out up to 10 times/day and 120 times/year",
          ),
          CardSubscrabe(
            standard: "Gold",
            price: "15",
            descriptionOne: "yearly free cash-out limit up to USD 50,000",
            descriptionTwo:
                "Free cash-out up to 15 times/day and 200 times/year",
          ),
          CardSubscrabe(
            standard: "Plainum",
            price: "50",
            descriptionOne: "yearly free cash-out limit up to USD 1,000,000",
            descriptionTwo:
                "Free cash-out up to 50 times/day and 1,000 times/year",
          ),
        ],
      ),
    );
  }
}
