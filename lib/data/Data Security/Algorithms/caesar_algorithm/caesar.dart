String caesarEncryption(String text, int key) {
  String Cipher = '';
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    int charCode;
    if (char == " ") {
      Cipher += char;
    } else if (char == char.toUpperCase()) {
      charCode = (char.codeUnitAt(0) - 65 + key) % 26 + 65;
      Cipher += String.fromCharCode(charCode);
    } else if (char == char.toLowerCase()) {
      charCode = (char.codeUnitAt(0) - 97 + key) % 26 + 97;
      Cipher += String.fromCharCode(charCode);
    }
  }
  return Cipher;
}

String caesarDecryption(String text, int key) {
  String plain = "";
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    int charCode;
    if (char == " ") {
      plain += char;
    } else if (char == char.toUpperCase()) {
      charCode = (char.codeUnitAt(0) - 65 - key) % 26 + 65;
      plain += String.fromCharCode(charCode);
    } else if (char == char.toLowerCase()) {
      charCode = (char.codeUnitAt(0) - 97 - key) % 26 + 97;
      plain += String.fromCharCode(charCode);
    }
  }
  return plain;
}
