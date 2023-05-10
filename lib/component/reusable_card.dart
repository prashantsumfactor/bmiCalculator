import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard(
      {required this.color, required this.child, required this.gestureTapCallback});

  final Color color;
  final Widget? child;
  final GestureTapCallback gestureTapCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureTapCallback,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
