import 'package:flutter/material.dart';
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
      home: PointsCounterView(),
    );
  }
}
