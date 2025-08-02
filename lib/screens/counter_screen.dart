import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamza/cubits/counter_cubit/counter_cubit.dart';
import 'package:hamza/cubits/counter_cubit/counter_state.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);
  static const String route = '/counter';

  //function to generate button with it's style and action
  Builder myButton(String text, Color color, int numOfAdd, String team) {
    return Builder(builder: (context) {
      return ElevatedButton(
        onPressed: () {
          BlocProvider.of<CounterCubit>(context)
              .incrementTeamACounter(num: numOfAdd, team: team);
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
    });
  }

  late int teamAPoints;
  late int teamBPoints;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: customAppBar(),
        body: bodyMethod(),
      );
    }, listener: (context, state) {
      if (state is TeamACounterIncrement) {
        teamAPoints = BlocProvider.of<CounterCubit>(context).teamACounter;
      } else if (state is TeamBCounterIncrement) {
        teamBPoints = BlocProvider.of<CounterCubit>(context).teamBCounter;
      } else {
        teamAPoints = 0;
        teamBPoints = 0;
      }
    });
  }

  Column bodyMethod() {
    return Column(
      children: [
        Spacer(flex: 1),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              teamASide(),
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
              teamBSide(),
            ],
          ),
        ),
        const SizedBox(height: 50, width: 0.0),
        myButton("Reset", Colors.pink, 0, 'rest'),
        Spacer(flex: 2),
      ],
    );
  }

  AppBar customAppBar() {
    return AppBar(
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
    );
  }

  Column teamASide() {
    return Column(
      children: [
        const SizedBox(height: 20, width: 0),
        Text(
          'Team A',
          style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        ),
        Text(
          '$teamAPoints',
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
        myButton("Add 1 Points", Color(0xff9C28B1), 1, 'A'),
        const SizedBox(height: 20, width: 0),
        myButton("Add 2 Points", Color(0xff9C28B1), 2, 'A'),
        const SizedBox(height: 20, width: 0),
        myButton("Add 3 Points", Color(0xff9C28B1), 3, 'A'),
        const SizedBox(height: 20, width: 0),
        myButton("Sub 1 Points", Color(0xff607D8B), -1, 'A'),
        const SizedBox(height: 20, width: 0),
        myButton("Sub 2 Points", Color(0xff607D8B), -2, 'A'),
      ],
    );
  }

  Column teamBSide() {
    return Column(
      children: [
        const SizedBox(height: 20.0, width: 0.0),
        Text(
          'Team B',
          style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        ),
        Text(
          '$teamBPoints',
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
        myButton("Add 1 Points", Color(0xff9C28B1), 1, 'B'),
        const SizedBox(height: 20, width: 0),
        myButton("Add 2 Points", Color(0xff9C28B1), 2, 'B'),
        const SizedBox(height: 20, width: 0),
        myButton("Add 3 Points", Color(0xff9C28B1), 3, 'B'),
        const SizedBox(height: 20, width: 0),
        myButton("Sub 1 Points", Color(0xff607D8B), -1, 'B'),
        const SizedBox(height: 20, width: 0),
        myButton("Sub 2 Points", Color(0xff607D8B), -2, 'B'),
      ],
    );
  }
}
