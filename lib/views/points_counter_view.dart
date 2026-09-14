import 'package:flutter/material.dart';
import 'package:points_counter/widgets/team_column.dart';

class PointsCounterView extends StatefulWidget {
  const PointsCounterView({super.key});

  @override
  State<PointsCounterView> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounterView> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addPointsToTeamA(int points) {
    setState(() {
      teamAPoints += points;
    });
  }

  void addPointsToTeamB(int points) {
    setState(() {
      teamBPoints += points;
    });
  }

  void resetPoints() {
    setState(() {
      teamAPoints = 0;
      teamBPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamColumn(
                  teamName: "Team A",
                  points: teamAPoints,
                  onAddPoints: addPointsToTeamA,
                ),
                SizedBox(height: 520, child: VerticalDivider(thickness: 2)),
                TeamColumn(
                  teamName: "Team B",
                  points: teamBPoints,
                  onAddPoints: addPointsToTeamB,
                ),
              ],
            ),
            SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 70),
                backgroundColor: Color(0xFFE65C00),
              ),
              onPressed: resetPoints,
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
        ),
      ),
    );
  }
}
