import 'package:flutter/material.dart';

class LanguageDialog extends StatefulWidget {
  const LanguageDialog({super.key});

  @override
  _LanguageDialogState createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  String _selectedLanguage = "English";

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Change Language",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            _buildLanguageOption(
                "assets/flags/cambodia.png", "ភាសាខ្មែរ", "Khmer"),
            const SizedBox(height: 10),
            _buildLanguageOption(
                "assets/flags/english.png", "English", "English"),
            const SizedBox(height: 10),
            _buildLanguageOption("assets/flags/china.png", "中文", "Chinese"),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption(String flagAsset, String language, String value) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
          child: ClipOval(
            child: Image.asset(
              flagAsset,
              fit: BoxFit.cover,
              width: 40,
              height: 40,
            ),
          ),
        ),
        title: Text(
          language,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        trailing: Radio<String>(
          value: value,
          groupValue: _selectedLanguage,
          onChanged: (String? newValue) {
            setState(
              () {
                _selectedLanguage = newValue!;
              },
            );
          },
        ),
      ),
    );
  }
}
