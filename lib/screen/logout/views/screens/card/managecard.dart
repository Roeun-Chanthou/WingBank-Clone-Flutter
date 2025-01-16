import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/card/body.dart';

import '../../../../../data/data_source/language_data.dart';
import '../../../../../logic/language_logic.dart';

class ManageCard extends StatefulWidget {
  const ManageCard({super.key});

  @override
  State<ManageCard> createState() => _ManageCardState();
}

class _ManageCardState extends State<ManageCard> {
  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        toolbarHeight: 5.h,
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          _language.manageCard,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: const BuildBodyCard(),
    );
  }
}
