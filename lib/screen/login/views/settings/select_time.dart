import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectTime extends StatefulWidget {
  const SelectTime({super.key, required this.name});
  final String name;

  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      child: Bounceable(
        onTap: () {},
        child: Container(
          width: 100.w,
          padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 15.sp),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 22.sp,
                color: Colors.grey[600],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
