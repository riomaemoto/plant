import 'package:flutter/material.dart';

const underTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.underText});
  final IconData icon;
  final String underText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          underText,
          style: underTextStyle,
        ),
      ],
    );
  }
}
