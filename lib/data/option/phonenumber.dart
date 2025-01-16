import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text.replaceAll(' ', '');
    String formattedText = '';

    for (int i = 0; i < newText.length; i++) {
      formattedText += newText[i];
      if ((i + 1) % 3 == 0 && i + 1 != newText.length) {
        formattedText += ' ';
      }
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(
        offset: formattedText.length,
      ),
    );
  }
}
