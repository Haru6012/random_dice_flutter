import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Diceee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNumber = Random().nextInt(6) + 1;
                        leftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset("images/dice$rightDiceNumber.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
