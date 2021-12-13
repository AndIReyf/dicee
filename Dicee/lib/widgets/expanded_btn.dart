import 'package:flutter/material.dart';

class ExpandedBtn extends StatelessWidget {
  final Function onPressed;
  final int icon;

  ExpandedBtn({required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () => onPressed(),
        child: Image.asset("assets/images/dice$icon.png"),
      ),
    );
  }
}
