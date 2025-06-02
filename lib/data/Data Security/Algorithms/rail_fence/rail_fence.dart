String railFenceEncryption(String planText) {
  int row = 0;
  List<String> railFaceList = ['', ''];
  for (int i = 0; i < planText.length; i++) {
    railFaceList[row] += planText[i];
    row = row == 0 ? 1 : 0;
  }

  return railFaceList.join();
}

String railFenceDecryption(String cipherText) {
  List<List<String?>> railFence =
      List.generate(2, (_) => List.filled(cipherText.length, null));

  int row = 0;

  for (int i = 0; i < cipherText.length; i++) {
    railFence[row][i] = "*";
    row = row == 0 ? 1 : 0;
  }
  int index = 0;
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < cipherText.length; j++) {
      if (railFence[i][j] == '*') {
        railFence[i][j] = cipherText[index++];
      }
    }
  }

  String plainText = '';
  row = 0;
  for (int i = 0; i < cipherText.length; i++) {
    plainText += railFence[row][i]!;
    row = row == 0 ? 1 : 0;
  }
  return plainText;
}
