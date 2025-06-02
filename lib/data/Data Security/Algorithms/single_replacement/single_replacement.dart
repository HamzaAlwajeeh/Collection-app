Map<String, String> myAphabitc = {
  'A': 'C',
  'B': 'D',
  'C': 'E',
  'D': 'F',
  'E': 'G',
  'F': 'J',
  'G': 'K',
  'H': 'L',
  'I': 'H',
  'J': 'B',
  'K': 'A',
  'L': 'I',
  'M': 'Q',
  'N': 'V',
  'O': 'U',
  'P': 'Y',
  'Q': 'P',
  'R': 'Z',
  'S': 'T',
  'T': 'W',
  'U': 'S',
  'V': 'M',
  'W': 'X',
  'X': 'N',
  'Y': 'R',
  'Z': 'O',
};

Map<String, String> myAlpha2 = {};

String singleReplacementEncryption(String Text) {
  List<String> keys = myAphabitc.keys.toList();
  List<String> values = myAphabitc.values.toList();

  for (int i = 0; i < values.length; i++) {
    myAlpha2[values[i]] = keys[i];
  }

  String Cipher = '';
  for (int i = 0; i < Text.length; i++) {
    Cipher += myAphabitc[Text[i].toUpperCase()] ?? Text[i];
  }
  return Cipher;
}

String singleReplacementDecryption(String Text) {
  List<String> keys = myAphabitc.keys.toList();
  List<String> values = myAphabitc.values.toList();

  for (int i = 0; i < values.length; i++) {
    myAlpha2[values[i]] = keys[i];
  }
  String Cipher = '';

  for (int i = 0; i < Text.length; i++) {
    if (myAlpha2.containsKey(Text[i].toUpperCase())) {
      if (Text[i] == Text[i].toUpperCase()) {
        Cipher += myAlpha2[Text[i].toUpperCase()]!;
      } else {
        Cipher += myAlpha2[Text[i].toUpperCase()]!.toLowerCase();
      }
    } else {
      Cipher += Text[i];
    }
  }

  return Cipher;
}
