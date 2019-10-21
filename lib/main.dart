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
  int leftDN = 1;
  int rightDN = 1;

  void zarla() {
    setState(() {
      leftDN = Random().nextInt(6) + 1;
      rightDN = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      zarla();
                    });
                  },
                  child: Image.asset(
                    'images/dice$leftDN.png',
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      zarla();
                    });
                  },
                  child: Image.asset(
                    'images/dice$rightDN.png',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: FlatButton(
              onPressed: () {
                zarla();
              },
              child: Card(
                color: Colors.red,
                child: Text(
                  'ZARLA!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
