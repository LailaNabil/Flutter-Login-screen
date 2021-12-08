import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final bool iconExists;
  final IconData icon;
  final String label;
  final Function onPressed;
  final double extraHorizontalPadding;
  final double extraVerticalPadding;

  CustomElevatedButton(
      {this.iconExists = false,
      this.icon,
      @required this.label,
      @required this.onPressed,
      this.extraHorizontalPadding = 0,
      this.extraVerticalPadding = 0});

  @override
  Widget build(BuildContext context) {
    return !iconExists
        ? ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(fontSize: 25),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                     EdgeInsets.symmetric(horizontal: 10+extraHorizontalPadding, vertical: 12+extraVerticalPadding)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
          )
        : ElevatedButton.icon(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 30,
            ),
            label: Text(
              label,
              style: TextStyle(fontSize: 25),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 10+extraHorizontalPadding, vertical: 12+extraVerticalPadding)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
          );
  }
}
