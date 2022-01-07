import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueAccent,
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
  int leftIndex = 1;
  int rightIndex = 1;

  void changeNumber() {
    setState(() {
      leftIndex = Random().nextInt(6) + 1;
      rightIndex = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeNumber();
              },
              child: Image.asset('images/dice$leftIndex.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeNumber();
              },
              child: Image.asset('images/dice$rightIndex.png'),
            ),
          ),
        ],
      ),
    );
  }
}
