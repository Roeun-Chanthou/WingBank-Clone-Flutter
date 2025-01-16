import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BodySelectAccount extends StatefulWidget {
  const BodySelectAccount({super.key});

  @override
  State<BodySelectAccount> createState() => _BodySelectAccountState();
}

class _BodySelectAccountState extends State<BodySelectAccount> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Choose Account',
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 15.sp),
        Container(
          width: 100.w,
          padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.5,
                child: Radio<int>(
                  fillColor: WidgetStateProperty.all(Colors.blue),
                  activeColor: Colors.grey,
                  overlayColor: WidgetStateProperty.all(Colors.grey),
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.sp),
              Container(
                height: 8.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Saving Account",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 10.sp),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue[600],
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 0.5.w),
                          child: Text(
                            "Default",
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.sp),
                    Container(
                      width: 70.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "101 118 731 (KHR)",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                          Spacer(),
                          Text(
                            "៛0",
                            style: TextStyle(
                              fontSize: 17.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.sp),
        Container(
          width: 100.w,
          padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.5,
                child: Radio<int>(
                  fillColor: WidgetStateProperty.all(Colors.blue),
                  activeColor: Colors.grey,
                  overlayColor: WidgetStateProperty.all(Colors.grey),
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.sp),
              Container(
                height: 8.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Saving Account",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.sp),
                    Container(
                      width: 70.w,
                      child: Row(
                        children: [
                          Text(
                            "101 118 732 (USA)",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$0.00",
                            style: TextStyle(
                              fontSize: 17.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
