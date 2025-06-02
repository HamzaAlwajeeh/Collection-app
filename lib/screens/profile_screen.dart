import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const String route = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D7EDA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0D7EDA),
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(2, 4),
                blurRadius: 5,
              ),
            ],
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 72,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/Home/Hamza.png'),
            ),
          ),
          const Text(
            "Hamza Al-wajeeh",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: 'Pacifico',
              letterSpacing: 2,
            ),
          ),
          const Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFFBEDBE2),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
            indent: 32,
            endIndent: 32,
            height: 3,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin:
                const EdgeInsets.only(right: 16, left: 16, bottom: 8, top: 2),
            elevation: 5,
            shadowColor: Colors.brown,
            child: const ListTile(
              leading: Icon(
                Icons.phone,
                color: Color(0xFF0D7EDA),
                size: 30,
              ),
              title: Text(
                '(+967) 771-832-796',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lora',
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
            indent: 32,
            endIndent: 32,
            height: 3,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
            elevation: 5,
            shadowColor: Colors.brown,
            child: const ListTile(
              leading: Icon(
                Icons.mail,
                color: Color(0xFF0D7EDA),
                size: 30,
              ),
              title: Text(
                'ha20mza60@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lora',
                  letterSpacing: 1,
                ),
              ),
            ),
          ),

          // Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     color: Colors.white,
          //   ),
          //   height: 50,
          //   child: const Row(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.only(left: 20),
          //         child: Icon(
          //           Icons.phone,
          //           color: Color(0xFF0D7EDA),
          //           size: 30,
          //         ),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.only(left: 24),
          //         child: Text(
          //           '(+967) 771832796',
          //           style: TextStyle(fontSize: 18),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Divider(
              color: Colors.white,
              thickness: 1,
              indent: 32,
              endIndent: 32,
              height: 3,
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
            elevation: 5,
            shadowColor: Colors.brown,
            child: const ListTile(
              leading: Icon(
                Icons.location_pin,
                color: Color(0xFF0D7EDA),
                size: 30,
              ),
              title: Text(
                'Yemen - Al- Mukalla city',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lora',
                  letterSpacing: 1,
                ),
              ),
              subtitle: Text(
                'Addes - 30 October Street',
                style: TextStyle(
                  fontFamily: 'Lora',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
