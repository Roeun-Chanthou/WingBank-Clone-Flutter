import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wing_bank/data/data_source/language_data.dart';
import 'package:wing_bank/logic/language_logic.dart';

List<Map<String, dynamic>> getProfileInfo(BuildContext context) {
  LanguageData _language = context.watch<LanguageLogic>().language;

  return [
    {
      "title": _language.fullName,
      "detail": "CHANTHOU ROEUN",
      "icon": Icons.person
    },
    {"title": _language.gender, "detail": "Male", "icon": Icons.male},
    {
      "title": _language.maritalStatus,
      "detail": "Single",
      "icon": Icons.favorite
    },
    {
      "title": _language.dateOfBirth,
      "detail": "14-01-2003",
      "icon": Icons.cake
    },
    {
      "title": _language.placeOfBirth,
      "detail": "REANG DEK, KOKIR THUM, KIEN SVAY, KANDAL",
      "icon": Icons.location_on,
    },
    {"title": _language.nationality, "detail": "KH", "icon": Icons.flag},
    {
      "title": _language.mobileNumber,
      "detail": "0978483209",
      "icon": Icons.phone
    },
    {"title": _language.emailAddress, "detail": "N/A", "icon": Icons.email},
  ];
}
