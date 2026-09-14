import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubits/counter_cubit.dart';
import 'views/points_counter_view.dart';

void main() {
  runApp(const PointsCounterApp());
}

class PointsCounterApp extends StatelessWidget {
  const PointsCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: PointsCounterView(),
      ),
    );
  }
}
