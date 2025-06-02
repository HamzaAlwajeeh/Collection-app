import 'package:flutter/material.dart';
import 'package:hamza/models/cryptographer_item.dart';

class ImageButtonsContainer extends StatelessWidget {
  const ImageButtonsContainer({
    super.key,
    required this.item,
    required this.routName,
  });
  final CryptographerItem item;
  final String routName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: 180,
            height: 240,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              color: item.backgroundColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff4A5759),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(2, 3),
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, routName);
                    },
                    child: Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        image: DecorationImage(
                          image: AssetImage(item.image),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, routName);
                    },
                    icon: const Icon(Icons.arrow_forward,
                        color: Color(0xffF2DFAA)),
                    label: Text(
                      item.text,
                      style: TextStyle(
                        color: item.textColor,
                        fontSize: 18,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4A5759),
                      minimumSize: Size(160, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
