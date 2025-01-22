import 'package:flutter/material.dart';

class TabbarList {
  Color color;
  String txt;
  Color txtColor;
  TabbarList({
    required this.color,
    required this.txt,
    required this.txtColor,
  });
}

List<TabbarList> tabbarList = [
  TabbarList(
    txtColor: Colors.white,
    color: Colors.blue.shade600,
    txt: "Available",
  ),
  TabbarList(
    color: Colors.white,
    txt: "Redeemed",
    txtColor: Colors.black,
  ),
  TabbarList(
    txtColor: Colors.black,
    color: Colors.white,
    txt: "Expired",
  ),
];
