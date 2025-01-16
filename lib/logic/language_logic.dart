import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wing_bank/data/data_source/language_data.dart';

import '../data/models/language_model.dart';

class LanguageLogic extends ChangeNotifier {
  LanguageData _language = LanguageData();
  LanguageData get language => _language;

  int _langIndex = 1;
  int get langIndex => _langIndex;

  LanguageLogic() {
    _loadLanguagePreference();
  }

  Future<void> _loadLanguagePreference() async {
    final prefs = await SharedPreferences.getInstance();
    _langIndex = prefs.getInt('languageIndex') ?? 1;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  Future<void> _saveLanguagePreference(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('languageIndex', index);
  }

  void changeToEnglish() {
    _updateLanguage(1);
  }

  void changeToKhmer() {
    _updateLanguage(0);
  }

  void changeToChina() {
    _updateLanguage(2);
  }

  void _updateLanguage(int index) {
    _langIndex = index;
    _language = languageList[index];
    _saveLanguagePreference(index);
    notifyListeners();
  }
}
