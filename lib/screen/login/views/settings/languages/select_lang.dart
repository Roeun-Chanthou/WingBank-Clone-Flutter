import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/logic/language_logic.dart';
import 'package:wing_bank/data/data_source/language_data.dart';

class SelectLang extends StatefulWidget {
  const SelectLang({super.key});

  @override
  State<SelectLang> createState() => _SelectLangState();
}

class _SelectLangState extends State<SelectLang> {
  @override
  Widget build(BuildContext context) {
    final languageLogic = context.watch<LanguageLogic>();
    final LanguageData _language = languageLogic.language;
    final int _langIndex = languageLogic.langIndex;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Selection'),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.sp),
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  _buildRowSelected(
                    image: "assets/flags/cambodia.png",
                    language: _language.languageKhmer,
                    value: 0,
                    selectedOption: _langIndex,
                    onChange: () {
                      context.read<LanguageLogic>().changeToKhmer();
                    },
                  ),
                  SizedBox(height: 16.sp),
                  _buildRowSelected(
                    image: "assets/flags/english.png",
                    language: _language.languageEnglish,
                    value: 1,
                    selectedOption: _langIndex,
                    onChange: () {
                      context.read<LanguageLogic>().changeToEnglish();
                    },
                  ),
                  SizedBox(height: 16.sp),
                  _buildRowSelected(
                    image: "assets/flags/china.png",
                    language: _language.languageChinese,
                    value: 2,
                    selectedOption: _langIndex,
                    onChange: () {
                      context.read<LanguageLogic>().changeToChina();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowSelected({
    required String image,
    required String language,
    required int value,
    required int selectedOption,
    required VoidCallback onChange,
  }) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(width: 16.sp),
          Expanded(
            child: Text(
              language,
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
          Transform.scale(
            scale: 1.5,
            child: Radio<int>(
              activeColor: Colors.blue,
              value: value,
              groupValue: selectedOption,
              onChanged: (newValue) {
                if (newValue != null) {
                  onChange();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
