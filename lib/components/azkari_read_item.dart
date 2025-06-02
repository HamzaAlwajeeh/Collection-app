import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/azkari_reader.dart';

class AzkariReadItem extends StatefulWidget {
  const AzkariReadItem({super.key, required this.item, required this.index});
  final AzkariReader item;
  final int index;

  @override
  State<AzkariReadItem> createState() => _AzkariReadItemState();
}

class _AzkariReadItemState extends State<AzkariReadItem> {
  @override
  Widget build(BuildContext context) {
    void decrementCounter() async {
      if (widget.item.counter > 0) {
        if (widget.item.counter == 1) {
          setState(() {
            widget.item.color = Color(0xff008000);
            widget.item.counter--;
          });
        } else {
          setState(() {
            widget.item.counter--;
          });
        }
      }
    }

    return InkWell(
      onTap: () => decrementCounter(),
      // حطيته داخل روو عشان اتخلص من تمدد الكنتينر
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            //اقل حجم للكنتينر
            constraints: BoxConstraints(
              minHeight: 100,
            ),
            width: 395,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(11)),
              color: widget.item.color ?? Color(0xff252E3E),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 66, 66, 66),
                  offset: Offset(0, 3),
                  spreadRadius: 0,
                  blurRadius: 6,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffF1B011),
                  radius: 35,
                  child: Text(
                    widget.item.counter.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'hadith',
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.item.text,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: widget.item.text));
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
                        backgroundColor: Color(0xff252E3E),
                      ),
                    );
                  },
                  icon: Icon(Icons.copy, size: 22),
                  label: Text(
                    "نسخ",
                    style: TextStyle(fontFamily: 'monadi', fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(120, 30),
                    backgroundColor: Color(0xffF1B011),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
