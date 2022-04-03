import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant/reuse_card.dart';

import 'icon_content.dart';

const bottomHeight = 80.0;
const mainColor = Color(0xff1D1E33);
const bottomColor = Color(0xff072169);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffAD),
      appBar: AppBar(
        backgroundColor: Color(0xff072169),
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    color: mainColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      underText: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    color: mainColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      underText: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              color: mainColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    color: mainColor,
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    color: mainColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomHeight,
          ),
        ],
      ),
    );
  }
}
