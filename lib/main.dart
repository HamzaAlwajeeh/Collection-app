import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamza/cubits/counter_cubit/counter_cubit.dart';
import 'package:hamza/screens/home_screen.dart';

import '../routes/app_routes.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
        routes: routes,
      ),
    );
  }
}
