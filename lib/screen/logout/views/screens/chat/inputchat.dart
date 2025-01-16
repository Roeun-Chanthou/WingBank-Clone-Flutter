import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Inputchat extends StatelessWidget {
  const Inputchat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          bottom: 1.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.attach_file_outlined,
                color: Colors.grey[600],
                size: 20.sp,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_outlined,
                color: Colors.grey[600],
                size: 20.sp,
              ),
            ),
            SizedBox(
              width: 60.w,
              height: 6.h,
              child: TextField(
                cursorColor: Colors.black,
                cursorHeight: 2.h,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                  hintText: "Type a message here",
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey[600],
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_voice,
                color: Colors.grey[600],
                size: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
