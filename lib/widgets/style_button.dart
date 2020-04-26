import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  StyledButton({@required this.text, this.color, @required this.onPressed});

  final String text;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
      color: color,
      onPressed: onPressed,
    );
  }
}
