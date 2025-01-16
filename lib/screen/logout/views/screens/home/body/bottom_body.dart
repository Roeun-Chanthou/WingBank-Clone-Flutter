import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/home/body/promotion_item.dart';
import 'package:wing_bank/screen/logout/views/pages/promotion.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/coin/splash_coin.dart';
import 'package:wing_bank/screen/logout/views/screens/home/pages/cbc_report/cbc_report.dart';
import 'package:wing_bank/screen/logout/views/screens/home/pages/check_prize/prize_check.dart';
import 'package:wing_bank/screen/logout/views/screens/home/pages/check_ticket/showdialog.dart';
import 'package:wing_bank/screen/logout/views/screens/home/pages/explore_partner/custom_bottom_sheet.dart';
import 'package:wing_bank/screen/logout/views/screens/home/pages/loan_partners/loan_partner.dart';
import 'package:wing_bank/screen/logout/views/screens/home/pages/smile_cam/smile_cam.dart';
import 'package:wing_bank/screen/logout/widgets/card_bottom.dart';

import '../../../../../../data/data_source/language_data.dart';
import '../../../../../../logic/language_logic.dart';

class BottomBody extends StatelessWidget {
  const BottomBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: screenWidth,
              margin: EdgeInsets.only(
                bottom: 1.h,
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Bounceable(
                      onTap: () => showCustomBottomSheet(context),
                      child: const CardParnter(
                        imageCard: "assets/socialmedia/partner.png",
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Bounceable(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashCoin(),
                          ),
                        );
                      },
                      child: const CardParnter(
                        imageCard: "assets/socialmedia/wingpoint.png",
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Bounceable(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashCoinPrize(),
                          ),
                        );
                      },
                      child: const CardParnter(
                        imageCard: "assets/socialmedia/checkprize.png",
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Bounceable(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return MyDailog();
                          },
                        );
                      },
                      child: const CardParnter(
                        imageCard: "assets/socialmedia/checkTicket.png",
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Bounceable(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SmileCam(),
                          ),
                        );
                      },
                      child: const CardParnter(
                        imageCard: "assets/socialmedia/smile.png",
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Bounceable(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CbcReport(),
                          ),
                        );
                      },
                      child: const CardParnter(
                        imageCard: "assets/socialmedia/report.png",
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Bounceable(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoanPartner(),
                          ),
                        );
                      },
                      child: const CardParnter(
                        imageCard: "assets/socialmedia/loanpartner.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 3.w),
                    Text(
                      _language.promotion,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 1.h,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PromotionScreen(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              _language.showAll,
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const PromotionItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
