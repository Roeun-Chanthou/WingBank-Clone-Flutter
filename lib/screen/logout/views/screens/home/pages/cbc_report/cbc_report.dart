import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';

class CbcReport extends StatefulWidget {
  const CbcReport({super.key});

  @override
  State<CbcReport> createState() => _CbcReportState();
}

class _CbcReportState extends State<CbcReport> {
  bool _isAgree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        title: const Text('CBC Report'),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 16.sp,
            vertical: 20.sp,
          ),
          child: Column(
            children: [
              Container(
                width: 100.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.sp,
                  vertical: 20.sp,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Request for My Personal\nCredit Report',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Icon(
                      Icons.file_copy_outlined,
                      size: 45.sp,
                      color: BackgroundColor.mainColor,
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildSectionButton(
                          icon: Icons.file_copy_outlined,
                          title: 'Low Service Fee',
                          subTitle: '(20,000 KHR)',
                        ),
                        _buildSectionButton(
                          icon: Icons.file_copy_outlined,
                          title: 'Easy',
                          subTitle: 'Convenient',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Powered By",
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: BackgroundColor.mainColor,
                    value: _isAgree,
                    onChanged: (value) {
                      setState(
                        () {
                          _isAgree = value!;
                        },
                      );
                    },
                  ),
                  Column(
                    children: [
                      Text(
                        "I agree to Wing's Terms & Conditions and\nshare my data to partner",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25.sp,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      _isAgree ? Colors.blue.shade600 : Colors.grey.shade400,
                  foregroundColor:
                      _isAgree ? Colors.white : Colors.grey.shade800,
                  minimumSize: Size(
                    60.w,
                    6.h,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionButton({
    required IconData icon,
    required String title,
    required String subTitle,
  }) {
    return Container(
      width: 40.w,
      padding: EdgeInsets.symmetric(
        vertical: 16.sp,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade300,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 25.sp,
            color: Colors.blue.shade600,
          ),
          SizedBox(
            height: 15.sp,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 17.sp,
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 17.sp,
            ),
          ),
        ],
      ),
    );
  }
}
