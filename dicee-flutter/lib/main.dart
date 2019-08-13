import 'package:flutter/material.dart';
import 'dart:math';
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
  int leftNum = 1 ;
  int rightNum = 1 ;
  void pressed (){
    setState(() {
      rightNum = Random().nextInt(6) + 1;
      leftNum = Random().nextInt(6)+1 ;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: (){
                  pressed();

                },
                child: Image.asset('images/dice$leftNum.png')),
          ),

          Expanded(
            child: FlatButton(
                onPressed: (){
                  pressed();
                },
                child: Image.asset('images/dice$rightNum.png')),
          ),
        ],
      ),
    );
  }
}

