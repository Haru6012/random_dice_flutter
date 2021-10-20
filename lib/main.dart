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
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    print(leftDiceNumber);
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {}, child: Image.asset("images/dice1.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
