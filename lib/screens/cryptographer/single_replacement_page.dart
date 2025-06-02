import 'package:flutter/material.dart';
import 'package:hamza/components/box_message.dart';
import 'package:hamza/components/crypto_app_bar.dart';
import 'package:hamza/components/primary_button.dart';
import 'package:hamza/components/text_input.dart';
import 'package:hamza/components/title_box.dart';
import 'package:hamza/data/Data%20Security/Algorithms/single_replacement/single_replacement.dart';

class SingleReplacementPage extends StatefulWidget {
  static const route = '/single-replacement';
  const SingleReplacementPage({super.key});

  @override
  State<SingleReplacementPage> createState() => _SingleReplacementPageState();
}

class _SingleReplacementPageState extends State<SingleReplacementPage> {
  String title = "";
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: cryptoAppBar(title: "Single Replacement"),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              TitleBox(title: "Single Replacement"),
              SizedBox(height: 60),
              TextInput(),
              BoxMessage(title: title, text: text),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    title: "Encryption",
                    onPress: () {
                      setState(() {
                        title = "Cipher Text";
                        text = singleReplacementEncryption(
                            TextInput.textInput ?? '');
                      });
                      ;
                    },
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                    title: "Decryption",
                    onPress: () {
                      setState(() {
                        title = "Plain Text";
                        text = singleReplacementDecryption(
                            TextInput.textInput ?? '');
                      });
                    },
                  ),
                ],
              ),
              Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }
}
