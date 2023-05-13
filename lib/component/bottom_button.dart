import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {

  const BottomButton({super.key, required this.buttonTitle, required this.onTap});

  final String buttonTitle;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}