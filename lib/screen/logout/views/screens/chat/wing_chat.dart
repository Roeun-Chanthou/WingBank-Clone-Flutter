import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/chat/body.dart';

import '../../../../../data/data_source/language_data.dart';
import '../../../../../logic/language_logic.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20.sp,
        ),
        toolbarHeight: 45,
        centerTitle: true,
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          _language.wingChat,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: const BuildBody(),
    );
  }
}
