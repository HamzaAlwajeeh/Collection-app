import 'package:flutter/material.dart';
import 'package:hamza/components/box_message.dart';
import 'package:hamza/components/crypto_app_bar.dart';
import 'package:hamza/components/primary_button.dart';
import 'package:hamza/components/title_box.dart';

import '../../data/Data Security/Algorithms/rsa_algorithm/rsa_algorithm.dart';

class RsaPage extends StatefulWidget {
  static const route = '/rsa';
  const RsaPage({super.key});

  @override
  State<RsaPage> createState() => _RsaPageState();
}

class _RsaPageState extends State<RsaPage> {
  int? p;
  int? q;
  int? e;
  int? plain;
  int? encrypt;
  int? decrypt;
  String title = "";
  String text = "";
  void performAlgorithm() {
    int n = p! * q!;
    int m = (p! - 1) * (q! - 1);
    int d = modInverse(e!, m);

    encrypt = compute(plain!, e!, n);
    decrypt = compute(encrypt!, d, n);
    setState(() {
      title = "Encrypt - Decrypt RSA";
      text = '''
Encryption => $encrypt
Decryption => $decrypt
''';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: cryptoAppBar(title: "RSA Algorithm"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 370,
              child: Column(
                children: [
                  TitleBox(title: "RSA Algorithm"),
                  SizedBox(
                    width: 340,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          p = int.tryParse(val) ?? 0;
                        });
                      },
                      decoration: inputStyle(
                          hint: "Enter First Prime Number..",
                          label: "Prime Number"),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff4A5759),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff4A5759),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 340,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          q = int.tryParse(val) ?? 0;
                        });
                      },
                      decoration: inputStyle(
                          hint: "Enter Second Prime Number..",
                          label: "Prime Number"),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff4A5759),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff4A5759),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 340,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          e = int.tryParse(val) ?? 0;
                        });
                      },
                      decoration:
                          inputStyle(hint: "Enter Number..", label: "E Number"),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff4A5759),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff4A5759),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 340,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          plain = int.tryParse(val) ?? 0;
                        });
                      },
                      decoration: inputStyle(
                          hint: "Enter Plain Text..", label: "Plain Text"),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff4A5759),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff4A5759),
                    ),
                  ),
                  BoxMessage(title: title, text: text.toString()),
                  PrimaryButton(
                      title: "E - D",
                      onPress: () {
                        performAlgorithm();
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

InputDecoration inputStyle({required String hint, required String label}) {
  return InputDecoration(
    prefixIcon: Icon(
      Icons.arrow_right,
      color: Color(0xff4A5759),
    ),
    hintText: "$hint",
    hintStyle: TextStyle(
      color: Color(0xff4A5759).withOpacity(0.6),
      fontSize: 16,
    ),
    labelText: "$label",
    labelStyle: TextStyle(
      color: Color(0xff4A5759),
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    filled: true,
    fillColor: Color(0xffDEDBD2),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: Color(0xff4A5759).withOpacity(0.3),
        width: 1.2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: Color(0xff4A5759),
        width: 2,
      ),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
  );
}
