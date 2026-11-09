import 'package:flutter/material.dart';



class ScoreCounterScreen extends StatefulWidget {
  const ScoreCounterScreen({super.key});

  @override
  State<ScoreCounterScreen> createState() => _ScoreCounterScreenState();
}

class _ScoreCounterScreenState extends State<ScoreCounterScreen> {
  
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('BasketBall'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Team A Section
              Column(
                children: [
                  const Text('Team A', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  Text('$teamAScore', style: const TextStyle(fontSize: 100)),
                  ElevatedButton(
                    onPressed: () => setState(() => teamAScore += 1),
                    child: const Text('Add 1 Point'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => teamAScore += 2),
                    child: const Text('Add 2 Point'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => teamAScore += 3),
                    child: const Text('Add 3 Point'),
                  ),
                ],
              ),
              
              // Divider line
              const SizedBox(
                height: 300,
                child: VerticalDivider(color: Colors.grey, thickness: 2),
              ),



              // Team B Section
              Column(
                children: [
                  const Text('Team B', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  Text('$teamBScore', style: const TextStyle(fontSize: 100)),
                  ElevatedButton(
                    onPressed: () => setState(() => teamBScore += 1),
                    child: const Text('Add 1 Point'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => teamBScore += 2),
                    child: const Text('Add 2 Point'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => teamBScore += 3),
                    child: const Text('Add 3 Point'),
                  ),
                ],
              ),


              
            ],
          ),
          const SizedBox(height: 40),
          // Reset Button
          ElevatedButton(
            onPressed: () => setState(() {
              teamAScore = 0;
              teamBScore = 0;
            }),
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}