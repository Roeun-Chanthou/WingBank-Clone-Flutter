import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/components/widgets/boxloan.dart.dart';
import 'package:wing_bank/constants/theme.dart';

class Loan extends StatelessWidget {
  const Loan({super.key});

  @override
  Widget build(BuildContext context) {
    final screeHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        toolbarHeight: 5.h,
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          'Loan',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: screeHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Color(0xFFF5F5F5),
        ),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              children: [
                const Boxloan(
                  image: "assets/admin/image.png",
                  title: "Quick Loan",
                  description: "A personal loan for Wing Bank customers.",
                  detail: "Staff, Private Worker, Student",
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Boxloan(
                  image: "assets/admin/image copy.png",
                  title: "Quick Cash Advance",
                  description: "A salary loan for our partnered factories.",
                  detail: "Staff, Private Worker, Student",
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Boxloan(
                  image: "assets/admin/image copy 2.png",
                  title: "KBank Salary Advance",
                  description:
                      "A salary loan from Kbank and Wing Bank for our\nparter factories.",
                  detail: "Employees using Wing Payroll Services.",
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Boxloan(
                  image: "assets/admin/image copy 3.png",
                  title: "RGC Salary Advance",
                  description: "A salary loan for employees under RGC Group.",
                  detail: "Employees under RGC Group",
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Boxloan(
                  image: "assets/admin/image copy 4.png",
                  title: "Wing Loan Request",
                  description: "Many loan types for Wing Bank customers.",
                  detail: "All Wing Bank customers",
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Boxloan(
                  image: "assets/admin/image copy 5.png",
                  title: "Partner Loan Request",
                  description: "Loan products offered by our partner banks",
                  detail: "All Wing Bank customers",
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
