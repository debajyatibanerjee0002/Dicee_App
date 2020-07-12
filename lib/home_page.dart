import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftbutton = 1;
  int rightbutton = 1;

  void left() {
    setState(() {
      leftbutton = Random().nextInt(6) + 1;
      rightbutton = Random().nextInt(6) + 1;
    });
  }

  void right() {
    setState(() {
      rightbutton = Random().nextInt(6) + 1;
      leftbutton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice'),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  left();
                  print('left button got pressed');
                },
                child: Image.asset('assets/dice$leftbutton.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  right();
                  print('right button got pressed');
                },
                child: Image.asset('assets/dice$rightbutton.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
