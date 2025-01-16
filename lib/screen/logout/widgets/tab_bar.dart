// import 'package:flutter/material.dart';
// import 'package:buttons_tabbar/buttons_tabbar.dart';

// class CustomTabBarScreen extends StatelessWidget {
//   const CustomTabBarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: const Text("Custom Tab Bar Example"),
//         //   backgroundColor: Colors.blueAccent,
//         // ),
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 color: Colors.green,
//                 child: Row(
//                   children: [
//                     ButtonsTabBar(
//                       backgroundColor: Colors.blueAccent,
//                       unselectedBackgroundColor: Colors.grey[300],
//                       unselectedLabelStyle:
//                           const TextStyle(color: Colors.black),
//                       labelStyle: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       borderWidth: 1,
//                       borderColor: Colors.blueAccent,
//                       radius: 20,
//                       contentPadding: const EdgeInsets.symmetric(
//                           horizontal: 15, vertical: 10),
//                       tabs: const [
//                         Tab(
//                           icon: Icon(Icons.home),
//                           text: "Home",
//                         ),
//                         Tab(
//                           icon: Icon(Icons.favorite),
//                           text: "Favorites",
//                         ),
//                         Tab(
//                           icon: Icon(Icons.person),
//                           text: "Profile",
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.yellow,
//                   child: const TabBarView(
//                     children: [
//                       Center(child: Text("Home Content")),
//                       Center(child: Text("Favorites Content")),
//                       Center(child: Text("Profile Content")),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
