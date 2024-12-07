import 'dart:math';
import 'package:bloc_v/bloc/Home_event.dart';
import 'package:bloc_v/bloc/Home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homebloc extends Bloc<homeEvent, homestate> {
  Homebloc() : super(initcolor(Colors.amber)) {
    on<changecolor>(
      (event, emit) => emit(
        repentcolor(
          Color(
            Random().nextInt(0xffffffff),
          ),
        ),
      ),
    );
  }
}
