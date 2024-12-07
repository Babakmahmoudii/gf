import 'package:bloc_v/bloc/Home_bloc.dart';
import 'package:bloc_v/ui/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const main_page());
}

class main_page extends StatelessWidget {
  const main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => Homebloc(),
        child: Home_screen(),
      ),
    );
  }
}
