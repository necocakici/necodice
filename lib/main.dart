import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List<int> diceNumber = [1, 2, 3, 4, 5, 6];
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;

  void leftDiceRandom() {
    setState(() {
      leftDiceNumber = diceNumber[new Random().nextInt(diceNumber.length)];
    });
  }

  void rightDiceRandom() {
    setState(() {
      rightDiceNumber = diceNumber[new Random().nextInt(diceNumber.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                leftDiceRandom();
                rightDiceRandom();
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                leftDiceRandom();
                rightDiceRandom();
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
