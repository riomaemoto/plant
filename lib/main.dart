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
      body: Container(),
    );
  }
}
