import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(BigAss());

class BigAss extends StatelessWidget {
  const BigAss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask me anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  Random ballNumber = new Random();
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$number.png'),
        onPressed: () {
          number = ballNumber.nextInt(5) + 1;
          setState(() {});
          // print(ballNumber.nextInt(5));
        },
      ),
    );
  }
}
