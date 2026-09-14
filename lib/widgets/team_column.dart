import 'package:flutter/material.dart';
import 'package:points_counter/widgets/custom_score_button.dart';

class TeamColumn extends StatelessWidget {
  final String teamName;
  final int points;
  final Function(int) onAddPoints;
  const TeamColumn({
    super.key,
    required this.teamName,
    required this.points,
    required this.onAddPoints,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(teamName, style: TextStyle(fontSize: 40, fontFamily: "Dangrek")),
        Text("$points", style: TextStyle(fontSize: 140)),
        Text("Points", style: TextStyle(fontSize: 35, fontFamily: "Dangrek")),
        SizedBox(height: 20),

        CustomScoreButton(text: "+1", onPressed: () => onAddPoints(1)),
        SizedBox(height: 20),

        CustomScoreButton(text: "+2", onPressed: () => onAddPoints(2)),
        SizedBox(height: 20),

        CustomScoreButton(text: "+3", onPressed: () => onAddPoints(3)),
      ],
    );
  }
}
