// import 'package:flutter/material.dart';
// import 'package:wing_bank/screen/login/home/%20main/appbar.dart';
// import 'package:wing_bank/screen/login/home/body/button.dart';
// import 'package:wing_bank/screen/login/home/body/promotion_item.dart';
// import 'package:wing_bank/screen/logout/widgets/card.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screeHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: CustomScrollView(
//         scrollDirection: Axis.vertical,
//         slivers: [
//           const BuildSliverAppBar(),
//           SliverToBoxAdapter(
//             child: Container(
//               width: screenWidth,
//               color: const Color(0xFFF5F5F5),
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                   left: 20,
//                   right: 20,
//                   bottom: 40,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const CardButton(),
//                     const SizedBox(height: 25),
//                     Container(
//                       alignment: Alignment.center,
//                       width: screenWidth * 0.9,
//                       height: screeHeight * 0.1,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: const Button(),
//                     ),
//                     const SizedBox(height: 20),
//                     const Text(
//                       "Promotions",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     const PromotionItem(),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
