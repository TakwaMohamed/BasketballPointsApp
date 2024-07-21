// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp( BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  @override
  State<BasketballPointsCounter> createState() => _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
   int teamAPoints=0;

   int teamBPoints=0;

   void addOnePoint(){}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(
                        fontSize: 200,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                        shape: const LinearBorder(),
                      ),
                      onPressed: (){
                      
                        setState((){
                          teamAPoints++;
                        });
                        print(teamAPoints);
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                        shape: const LinearBorder(),
                      ),
                      onPressed: () {
                        setState((){
                          teamAPoints+=2;
                        });
                        print(teamAPoints);
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                        shape: const LinearBorder(),
                      ),
                      onPressed: () {
                        setState((){
                          teamAPoints+=3;
                        });
                        print(teamAPoints);
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:16,
                    ),
                  ],
                ),
                const SizedBox(
                  height:500,
                  child: VerticalDivider( 
                    color: Colors.grey,
                    thickness: 3,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(
                        fontSize: 200,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                        shape: const LinearBorder(),
                      ),
                      onPressed: () {
                        setState((){
                          teamBPoints++;
                        });
                        print(teamAPoints);},
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                        shape: const LinearBorder(),
                      ),
                      onPressed: () {
                        setState((){
                          teamBPoints+=2;
                        });
                        print(teamAPoints);
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                        shape: const LinearBorder(),
                      ),
                      onPressed: () {
                        setState((){
                          teamBPoints+=3;
                        });
                        print(teamAPoints);
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:16,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height:100,
            ),
            ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                        shape: const LinearBorder(),
                      ),
                      onPressed: () {
                        setState((){
                          teamAPoints=0;
                          teamBPoints=0;

                        });
                        print(teamAPoints);
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
