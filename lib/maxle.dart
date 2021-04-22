import 'package:flutter/material.dart';
import 'package:maxle/playArea.dart';

class Maxle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        appBar: AppBar(
          title: Center(child: Text('Mäxle')),
          backgroundColor: Colors.green[800],
        ),
        body: PlayArea(),
      ),
    );
  }
}
