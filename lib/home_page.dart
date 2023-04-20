import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomColor = Color(0xFFEB1555);
const inActiveCardColor = Color(0xFF11132B);
const activeCardColor = Color(0xFF1D1E33);

class BmiHome extends StatefulWidget {
  const BmiHome({super.key});

  @override
  State<BmiHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BmiHome> {
  Color maleCardColor = inActiveCardColor;
  Color feMaleCardColor = inActiveCardColor;

  // 1- male, 2- female
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        feMaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    }
    if (gender == 2) {
      if (feMaleCardColor == inActiveCardColor) {
        feMaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else {
        feMaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                      color: maleCardColor,
                      child: IconContent(
                        name: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                      color: feMaleCardColor,
                      child: IconContent(
                        name: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      )),
                ),
              )
            ],
          )),
          Expanded(
              child: ReusableCard(
            color: activeCardColor,
            child: IconContent(
              name: 'MALE',
              icon: FontAwesomeIcons.mars,
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                      color: activeCardColor,
                      child: IconContent(
                        name: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ))),
              Expanded(
                child: ReusableCard(
                    color: activeCardColor,
                    child: IconContent(
                      name: 'FEMALE',
                      icon: FontAwesomeIcons.mars,
                    )),
              )
            ],
          )),
          Container(
            color: bottomColor,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: const EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
