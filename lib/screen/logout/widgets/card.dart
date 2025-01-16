// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:wing_bank/logic/language_logic.dart';
// import 'package:wing_bank/models/data/language_data.dart';
// import 'package:wing_bank/screen/login/page/bill_payment/billpayment.dart';
// import 'package:wing_bank/screen/login/page/code_to_wing/code_to_wing.dart';
// import 'package:wing_bank/screen/login/page/free_cash_out/free_cash.dart';
// import 'package:wing_bank/screen/login/page/loan/loan.dart';
// import 'package:wing_bank/screen/login/page/local_transfer/local_transfer.dart';
// import 'package:wing_bank/screen/login/page/myacc/myaccount.dart';
// import 'package:wing_bank/screen/login/page/new_acc/newaccount.dart';
// import 'package:wing_bank/screen/login/page/phone_topup/topup.dart';
// import 'package:wing_bank/screen/login/page/world_transfer/wingto_world.dart';
// import 'package:wing_bank/screen/logout/widgets/buildcard.dart';

// class CardButton extends StatefulWidget {
//   const CardButton({super.key});

//   @override
//   State<CardButton> createState() => _CardButtonState();
// }

// class _CardButtonState extends State<CardButton> {
//   LanguageData _language = LanguageData();

//   Widget buildCardButton(
//     BuildContext context,
//     String icon,
//     String title,
//     Widget page,
//   ) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => page),
//         );
//       },
//       child: BuildCard(
//         icon: icon,
//         title: title,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     _language = context.watch<LanguageLogic>().language;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             buildCardButton(
//               context,
//               "assets/icons/myaccount.png",
//               _language.myAccout,
//               const Myaccount(),
//             ),
//             buildCardButton(
//               context,
//               "assets/icons/localtransfer.png",
//               _language.localTranster,
//               const LocalTransfer(),
//             ),
//             buildCardButton(
//               context,
//               "assets/icons/worldTransfer.png",
//               _language.localTranster,
//               const WingtoWorld(),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             buildCardButton(
//               context,
//               "assets/icons/payment.png",
//               _language.billPayment,
//               const Billpayment(),
//             ),
//             buildCardButton(
//               context,
//               "assets/icons/TopUp.png",
//               _language.phoneTopUp,
//               const Topup(),
//             ),
//             buildCardButton(
//               context,
//               "assets/icons/code_to_wing.png",
//               _language.codeToWing,
//               const CodeToWing(),
//             ),
//           ],
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             buildCardButton(
//               context,
//               "assets/icons/newaccount.png",
//               _language.newAccount,
//               const Newaccount(),
//             ),
//             buildCardButton(
//               context,
//               "assets/icons/loan.png",
//               _language.loan,
//               const Loan(),
//             ),
//             buildCardButton(
//               context,
//               "assets/icons/freecashout.png",
//               _language.freeCashOut,
//               const FreeCashOut(),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
