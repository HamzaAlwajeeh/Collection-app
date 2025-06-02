import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);
  static const String route = '/counter';

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int rightCounter = 0;
  int leftCounter = 0;

  void rightIncrementCounter(int num) {
    setState(() {
      rightCounter += num;
    });
  }

  void leftIncrementCounter(int num) {
    setState(() {
      leftCounter += num;
    });
  }

  //function to generate button with it's style and action
  ElevatedButton myButton(
      String text, Color color, int numOfAdd, String location) {
    return ElevatedButton(
      onPressed: () {
        if (location == "Right") {
          rightIncrementCounter(numOfAdd);
        } else if (location == 'left') {
          leftIncrementCounter(numOfAdd);
        } else {
          setState(() {
            leftCounter = 0;
            rightCounter = 0;
          });
        }
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 18, fontFamily: ''),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 3,
        minimumSize: Size(170, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9C28B1),
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Counter",
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(2, 2)),
            ],
            fontWeight: FontWeight.bold,
            fontFamily: 'BebasNeue',
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Spacer(flex: 1),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20, width: 0),
                    Text(
                      'Team 1',
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico'),
                    ),
                    Text(
                      '$leftCounter',
                      style: const TextStyle(
                          fontSize: 90,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico'),
                    ),
                    const SizedBox(height: 20, width: 0),
                    SizedBox(
                      width: 150,
                      child: Divider(
                        height: 20,
                        thickness: 1,
                        color: Colors.black,
                        endIndent: 5,
                        indent: 5,
                      ),
                    ),
                    myButton("Add 1 Points", Color(0xff9C28B1), 1, 'left'),
                    const SizedBox(height: 20, width: 0),
                    myButton("Add 2 Points", Color(0xff9C28B1), 2, 'left'),
                    const SizedBox(height: 20, width: 0),
                    myButton("Add 3 Points", Color(0xff9C28B1), 3, 'left'),
                    const SizedBox(height: 20, width: 0),
                    myButton("Sub 1 Points", Color(0xff607D8B), -1, 'left'),
                    const SizedBox(height: 20, width: 0),
                    myButton("Sub 2 Points", Color(0xff607D8B), -2, 'left'),
                  ],
                ),
                SizedBox(
                  height: 590,
                  width: 30,
                  child: const VerticalDivider(
                    width: 50,
                    thickness: 1,
                    color: Colors.black,
                    endIndent: 8,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 20.0, width: 0.0),
                    Text(
                      'Team 2',
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico'),
                    ),
                    Text(
                      '$rightCounter',
                      style: const TextStyle(
                          fontSize: 90,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico'),
                    ),
                    const SizedBox(height: 20.0, width: 0.0),
                    SizedBox(
                      width: 150,
                      child: Divider(
                        height: 20,
                        thickness: 1,
                        color: Colors.black,
                        endIndent: 5,
                        indent: 5,
                      ),
                    ),
                    myButton("Add 1 Points", Color(0xff9C28B1), 1, 'Right'),
                    const SizedBox(height: 20, width: 0),
                    myButton("Add 2 Points", Color(0xff9C28B1), 2, 'Right'),
                    const SizedBox(height: 20, width: 0),
                    myButton("Add 3 Points", Color(0xff9C28B1), 3, 'Right'),
                    const SizedBox(height: 20, width: 0),
                    myButton("Sub 1 Points", Color(0xff607D8B), -1, 'Right'),
                    const SizedBox(height: 20, width: 0),
                    myButton("Sub 2 Points", Color(0xff607D8B), -2, 'Right'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50, width: 0.0),
          myButton("Reset", Colors.pink, 0, 'rest'),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
