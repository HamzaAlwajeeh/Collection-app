String vigenerEncryption(String Text, String Key) {
  String result = "";
  int keyLength = Key.length;

  for (int i = 0; i < Text.length; i++) {
    if (!RegExp(r'[A-Za-z]').hasMatch(Text[i])) {
      result += Text[i];
      continue;
    }

    int shift =
        Key[i % keyLength].toUpperCase().codeUnitAt(0) - 'A'.codeUnitAt(0);

    int base = Text[i].toUpperCase() == Text[i]
        ? 'A'.codeUnitAt(0)
        : 'a'.codeUnitAt(0);

    result +=
        String.fromCharCode((Text[i].codeUnitAt(0) - base + shift) % 26 + base);
  }
  return result;
}

String vigenerDecription(String Text, String Key) {
  String result = "";
  int keyLength = Key.length;

  for (int i = 0; i < Text.length; i++) {
    if (!RegExp(r'[A-Za-z]').hasMatch(Text[i])) {
      result += Text[i];
      continue;
    }

    int shift =
        Key[i % keyLength].toUpperCase().codeUnitAt(0) - 'A'.codeUnitAt(0);

    int base = Text[i].toUpperCase() == Text[i]
        ? 'A'.codeUnitAt(0)
        : 'a'.codeUnitAt(0);

    result +=
        String.fromCharCode((Text[i].codeUnitAt(0) - base - shift) % 26 + base);
  }
  return result;
}
