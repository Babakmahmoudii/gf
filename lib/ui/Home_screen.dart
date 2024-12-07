import 'package:bloc_v/bloc/Home_bloc.dart';
import 'package:bloc_v/bloc/Home_event.dart';
import 'package:bloc_v/bloc/Home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<Homebloc, homestate>(
          builder: ((context, State) {
            if (State is initcolor) {
              return Container(
                color: State.initcolorr,
              );
            }
            if (State is repentcolor) {
              return Container(
                color: State.repanetcolor,
              );
            }
           return Container(
                color: Colors.red,
              );
          }),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              context.read<Homebloc>().add(changecolor());
            },
            child: Text('change color'),
          ),
        ),
      ],
    );
  }
}
