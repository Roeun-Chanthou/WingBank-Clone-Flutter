import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/components/widgets/button_other.dart';
import 'package:wing_bank/components/widgets/buttonpayment.dart';
import 'package:wing_bank/components/widgets/buttonpaymentcolumn.dart';
import 'package:wing_bank/screen/login/page/more/donation_charity.dart';
import 'package:wing_bank/screen/login/page/more/finance.dart';
import 'package:wing_bank/screen/login/page/more/insurance.dart';
import 'package:wing_bank/screen/login/page/more/internet_tv.dart';
import 'package:wing_bank/screen/login/page/more/other.dart';
import 'package:wing_bank/screen/login/page/more/postpaid.dart';
import 'package:wing_bank/screen/login/page/more/school.dart';
import 'package:wing_bank/screen/login/page/more/sme_business_payment.dart';
import 'package:wing_bank/screen/login/page/more/utilities.dart';

class BodyCard extends StatelessWidget {
  const BodyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(bottom: 2.h),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Utilities(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/svg/home.png",
                    text: "Utilities",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Finance(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/svg/bank.png",
                    text: "Finance",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Insurance(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/svg/security.png",
                    text: "Insurance",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InternetTv(),
                      ),
                    );
                  },
                  child: Buttonpaymentcolumn(
                    icon: "assets/svg/tv-controller.png",
                    title: "Internet\n& TV",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const School(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/svg/graduation-hat.png",
                    text: "School",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SmeBusinessPayment(),
                      ),
                    );
                  },
                  child: const Buttonpaymentcolumn(
                    icon: "assets/svg/investment.png",
                    title: "SME business\nPayment",
                    // subtitle: "",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DonationCharity(),
                      ),
                    );
                  },
                  child: const Buttonpaymentcolumn(
                    icon: "assets/svg/donation.png",
                    title: "Donation",
                    // subtitle: "& Charity",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Postpaid(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/svg/prepaid.png",
                    text: "Postpaid",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Other(),
                  ),
                );
              },
              child: const ButtonOther(
                icon: Icons.more_horiz_outlined,
                text: "Others",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
