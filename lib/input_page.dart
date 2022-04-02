import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      label: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    color: mainColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "female",
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

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}

class ReuseCard extends StatelessWidget {
  ReuseCard({required this.color, this.cardChild});
  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
