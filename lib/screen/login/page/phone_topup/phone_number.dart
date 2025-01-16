import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Phone Number"),
          SizedBox(
            height: 1.h,
          ),
          Bounceable(
            onTap: () {
              print("Select Phone Number Clicked");
            },
            child: KeyboardListener(
              focusNode: FocusNode(),
              child: TextFormField(
                controller: phoneController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  hintText: "Enter Phone Number",
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.15),
                  prefixIcon: Icon(Icons.phone_iphone_outlined),
                  suffixIcon: Icon(Icons.account_box_rounded),
                  contentPadding: EdgeInsets.symmetric(horizontal: 3.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
