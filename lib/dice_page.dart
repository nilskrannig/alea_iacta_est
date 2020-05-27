import 'dart:math';
import 'package:flutter/material.dart';

import 'constants.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      appBar: AppBar(
        title: Text('alea iacta est'),
        backgroundColor: kAppBarBackgroundColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Roll it again!',
                style: TextStyle(
                  fontSize: 54.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      _rollDiceImages();
                    },
                    child: Image.asset(
                      'images/dice$leftDiceNumber.png',
                      color: kAppBarBackgroundColor,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      _rollDiceImages();
                    },
                    child: Image.asset(
                      'images/dice$rightDiceNumber.png',
                      color: kAppBarBackgroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                sum.toString(),
                style: kSumTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _rollDiceImages() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      sum = leftDiceNumber + rightDiceNumber;
    });
  }
}
