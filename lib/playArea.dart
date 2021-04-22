import 'dart:math';

import 'package:flutter/material.dart';

class PlayArea extends StatefulWidget {
  @override
  _PlayAreaState createState() => _PlayAreaState();
}

class _PlayAreaState extends State<PlayArea> {
  int leftDiceEyes = 1;
  int rightDiceEyes = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$leftDiceEyes.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$rightDiceEyes.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  leftDiceEyes = Random().nextInt(6) + 1;
                  rightDiceEyes = Random().nextInt(6) + 1;
                });
              },
              child: Text(
                'Roll the Dice',
                style: TextStyle(fontSize: 40),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(getColor)),
            ),
          ),
        ],
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green;
    }
    return Colors.green;
  }
}
