import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class CardItem extends StatefulWidget {
  CardItem({
    super.key,
    required this.image,
    required this.title,
  });

  String image;
  String title;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(4.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 6.w,
            backgroundImage: AssetImage(
              widget.image,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 17.sp,
            ),
          ),
        ],
      ),
    );
  }
}
