import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/pages/all_promotion.dart';
import 'package:wing_bank/screen/logout/views/pages/card.dart';
import 'package:wing_bank/screen/logout/views/pages/entertainment.dart';
import 'package:wing_bank/screen/logout/views/pages/filter_promotion.dart';
import 'package:wing_bank/screen/logout/views/pages/food.dart';
import 'package:wing_bank/screen/logout/views/pages/money_transfer.dart';
import 'package:wing_bank/screen/logout/views/pages/wingpoint.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({super.key});

  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 11,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    LanguageData _language = context.watch<LanguageLogic>().language;

    return Scaffold(
      // backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        toolbarHeight: 45,
        title: Text(
          _language.all,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        backgroundColor: BackgroundColor.mainColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        color: BackgroundColor.mainColor,
        child: Container(
          width: screenWidth,
          height: screenHeight,
          padding: const EdgeInsets.only(
            top: 20,
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                25,
              ),
              topRight: Radius.circular(
                25,
              ),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 25,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                child: ButtonsTabBar(
                  controller: _tabController,
                  backgroundColor: Colors.blueAccent,
                  unselectedBackgroundColor: Colors.white,
                  unselectedLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  borderWidth: 0,
                  borderColor: Colors.blueAccent,
                  radius: 10,
                  height: 40,
                  buttonMargin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 4,
                  ),
                  contentCenter: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  tabs: [
                    Tab(
                      text: _language.all,
                    ),
                    Tab(
                      text: _language.wingmallOffers,
                    ),
                    Tab(
                      text: _language.moneyTransfer,
                    ),
                    Tab(
                      text: _language.entertainment,
                    ),
                    Tab(
                      text: _language.wingpoints,
                    ),
                    Tab(
                      text: _language.foodAndBeverage,
                    ),
                    Tab(
                      text: _language.card,
                    ),
                    Tab(
                      text: _language.loans,
                    ),
                    Tab(
                      text: _language.wingKHQR,
                    ),
                    Tab(
                      text: _language.savings,
                    ),
                    Tab(
                      text: _language.travelAndAccommodation,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AllPromotion(),
                    FilterPromotion(),
                    MoneyTransfer(),
                    Entertainment(),
                    WingPoint(),
                    MyCard(),
                    Food(),
                    WingPoint(),
                    MoneyTransfer(),
                    Entertainment(),
                    WingPoint(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
