import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wing_bank/data/data_source/icon_item.dart';
import 'package:wing_bank/data/data_source/language_data.dart';
import 'package:wing_bank/logic/language_logic.dart';
import 'package:wing_bank/screen/login/page/bill_payment/billpayment.dart';
import 'package:wing_bank/screen/login/page/code_to_wing/code_to_wing.dart';
import 'package:wing_bank/screen/login/page/free_cash_out/free_cash.dart';
import 'package:wing_bank/screen/login/page/loan/loan.dart';
import 'package:wing_bank/screen/login/page/local_transfer/local_transfer.dart';
import 'package:wing_bank/screen/login/page/new_acc/newaccount.dart';
import 'package:wing_bank/screen/login/page/phone_topup/topup.dart';
import 'package:wing_bank/screen/login/page/world_transfer/wingto_world.dart';

import '../../screen/login/page/myacc/myaccount.dart';

List<IconItem> iconItem(BuildContext context) {
  LanguageData _language = context.watch<LanguageLogic>().language;

  return [
    IconItem(
      imageIcon: "assets/icons/myaccount.png",
      title: _language.myAccout,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Myaccount(),
        ),
      ),
    ),
    IconItem(
      imageIcon: "assets/icons/localtransfer.png",
      title: _language.localTranster,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocalTransfer(),
        ),
      ),
    ),
    IconItem(
      imageIcon: "assets/icons/worldTransfer.png",
      title: _language.worlTranster,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WingtoWorld(),
        ),
      ),
    ),
    IconItem(
      imageIcon: "assets/icons/payment.png",
      title: _language.billPayment,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Billpayment(),
        ),
      ),
    ),
    IconItem(
      imageIcon: "assets/icons/TopUp.png",
      title: _language.phoneTopUp,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Topup(),
        ),
      ),
    ),
    IconItem(
      imageIcon: "assets/icons/code_to_wing.png",
      title: _language.codeToWing,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CodeToWing(),
        ),
      ),
    ),
    IconItem(
      imageIcon: "assets/icons/newaccount.png",
      title: _language.newAccount,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Newaccount(),
        ),
      ),
    ),
    IconItem(
      imageIcon: "assets/icons/loan.png",
      title: _language.loan,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Loan(),
        ),
      ),
    ),
    IconItem(
      imageIcon: "assets/icons/freecashout.png",
      title: _language.freeCashOut,
      onTab: (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FreeCashOut(),
        ),
      ),
    ),
  ];
}
