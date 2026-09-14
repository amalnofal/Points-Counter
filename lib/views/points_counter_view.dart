import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubits/counter_cubit.dart';
import 'package:points_counter/cubits/counter_state.dart';
import 'package:points_counter/widgets/team_column.dart';

class PointsCounterView extends StatelessWidget {
  const PointsCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Points counter",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        backgroundColor: Color(0xFFE65C00),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          CounterCubit cubit = BlocProvider.of<CounterCubit>(context);

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamColumn(
                    teamName: "Team A",
                    points: cubit.teamAPoints,
                    onAddPoints: (int p1) {
                      cubit.addPointsToTeam(team: "A", points: p1);
                    },
                  ),
                  SizedBox(height: 520, child: VerticalDivider(thickness: 2)),
                  TeamColumn(
                    teamName: "Team B",
                    points: cubit.teamBPoints,
                    onAddPoints: (int p1) {
                      cubit.addPointsToTeam(team: "B", points: p1);
                    },
                  ),
                ],
              ),
              SizedBox(height: 70),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 70),
                  backgroundColor: Color(0xFFE65C00),
                ),
                onPressed: () {
                  cubit.resetPoints();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
