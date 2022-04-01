import 'package:flutter/material.dart';
import 'package:plant/price_screen.dart';

void main() => runApp(Bitcoin());

class Bitcoin extends StatelessWidget {
  const Bitcoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PriceScreen(),
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
    );
  }
}
