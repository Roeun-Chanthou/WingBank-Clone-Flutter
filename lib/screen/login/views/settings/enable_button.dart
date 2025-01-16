import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EnableButton extends StatefulWidget {
  EnableButton({
    super.key,
    required this.name,
  });

  final String name;

  @override
  State<EnableButton> createState() => _EnableButtonState();
}

class _EnableButtonState extends State<EnableButton> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.sp),
      child: Row(
        children: [
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isSwitched = !isSwitched;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 55,
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                color: isSwitched ? Colors.blue : Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: AnimatedAlign(
                duration: Duration(milliseconds: 300),
                alignment:
                    isSwitched ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2,
                        offset: Offset(1, 1),
                      ),
                    ],
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
