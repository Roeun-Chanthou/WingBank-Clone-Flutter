import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AccountModalDialog {
  AccountModalDialog._();

  static Future show(BuildContext context, int initialSelected) {
    return showModalBottomSheet<int>(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: OptionChooseAccount(
            initialSelected: initialSelected,
          ),
        );
      },
    );
  }
}

class OptionChooseAccount extends StatefulWidget {
  final int initialSelected;

  OptionChooseAccount({
    Key? key,
    required this.initialSelected,
  }) : super(key: key);

  @override
  State<OptionChooseAccount> createState() => _OptionChooseAccountState();
}

class _OptionChooseAccountState extends State<OptionChooseAccount> {
  late int selectedOption;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.initialSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -1.5.h,
          child: Container(
            width: 10.w,
            height: 0.5.h,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(
          height: 30.h,
          width: 100.w,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Color(0xFFF5F5F5),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
            child: Column(
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
                buildAccountOption(
                  title: "Saving Account",
                  subtitle: "101 118 731 (KHR)",
                  isDefault: true,
                  value: 1,
                ),
                SizedBox(height: 15.sp),
                buildAccountOption(
                  title: "Saving Account",
                  subtitle: "101 118 732 (USA)",
                  isDefault: false,
                  value: 2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildAccountOption({
    required String title,
    required String subtitle,
    required bool isDefault,
    required int value,
  }) {
    return Container(
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
              value: value,
              groupValue: selectedOption,
              onChanged: (newValue) {
                setState(() {
                  selectedOption = newValue!;
                });
                Navigator.pop(context, selectedOption);
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
                      title,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (isDefault) ...[
                      SizedBox(width: 10.sp),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue[600],
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.w,
                          vertical: 0.5.w,
                        ),
                        child: Text(
                          "Default",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                SizedBox(height: 5.sp),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
