import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  ReuseCard({required this.color, this.cardChild});
  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
