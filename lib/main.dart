import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

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
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 40, fontFamily: "Dangrek"),
                    ),
                    Text("$teamAPoints", style: TextStyle(fontSize: 140)),
                    Text(
                      "Points",
                      style: TextStyle(fontSize: 35, fontFamily: "Dangrek"),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(90, 50),
                        backgroundColor: Color(0xFFE65C00),
                        shape: OvalBorder(),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        '+1',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(90, 50),
                        backgroundColor: Color(0xFFE65C00),
                        shape: OvalBorder(),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        '+2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(90, 50),
                        backgroundColor: Color(0xFFE65C00),
                        shape: OvalBorder(),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        '+3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 520, child: VerticalDivider(thickness: 2)),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 40, fontFamily: "Dangrek"),
                    ),
                    Text("$teamBPoints", style: TextStyle(fontSize: 140)),
                    Text(
                      "Points",
                      style: TextStyle(fontSize: 35, fontFamily: "Dangrek"),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(90, 50),
                        backgroundColor: Color(0xFFE65C00),
                        shape: OvalBorder(),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        '+1',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(90, 50),
                        backgroundColor: Color(0xFFE65C00),
                        shape: OvalBorder(),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        '+2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(90, 50),
                        backgroundColor: Color(0xFFE65C00),
                        shape: OvalBorder(),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        '+3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
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
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
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
        ),
      ),
    );
  }
}
