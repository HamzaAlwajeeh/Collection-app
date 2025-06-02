import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BoxMessage extends StatefulWidget {
  BoxMessage({super.key, required this.title, required this.text});
  @override
  State<BoxMessage> createState() => _BoxMessageState();
  final String title;
  final String text;
}

class _BoxMessageState extends State<BoxMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      decoration: BoxDecoration(
        color: Color(0xffDEDBD2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(0xff4A5759).withOpacity(0.4),
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff4A5759),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 30),
          Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff4A5759),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: widget.text));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "تم نسخ النص",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  duration: Duration(seconds: 2),
                  backgroundColor: Color(0xff4A5759),
                ),
              );
            },
            icon: Icon(Icons.copy, size: 20),
            label: Text("Copy"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff4A5759),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
        ],
      ),
    );
  }
}
