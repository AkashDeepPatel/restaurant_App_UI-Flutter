import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(this.title, this.colour, this.onPressed);

  final String title;
  final Color colour;
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: colour,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
