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

enum Gender { male, female }

class _MyHomePageState extends State<BmiHome> {

  Gender selectedGender = Gender.male;

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
                child: ReusableCard(
                    onPress: (){
                      selectedGender = Gender.male;
                    },
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inActiveCardColor,
                    child: IconContent(
                      name: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    )),
              ),
              Expanded(
                child: ReusableCard(
                    onPress: (){
                      selectedGender = Gender.female;
                    },
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inActiveCardColor,
                    child: IconContent(
                      name: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    )),
              )
            ],
          )),
          Expanded(
              child: ReusableCard(
            color: activeCardColor,
            onPress: (){},
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
                      onPress: (){},
                      child: IconContent(
                        name: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ))),
              Expanded(
                child: ReusableCard(
                    color: activeCardColor,
                    onPress: (){},
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
