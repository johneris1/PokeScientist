import 'package:flutter/material.dart';

class ButtonDifficulty extends StatelessWidget {
  const ButtonDifficulty({
    Key key,
    this.difficulty,
    this.color,
    this.onPressed,
  }) : super(key: key);
  final String difficulty;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        height: 64,
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: RaisedButton(
            color: Colors.white,
            elevation: 0,
            child: Text(difficulty,
                textAlign: TextAlign.center,
                style: TextStyle(
                    // color: Color(0xff223066),
                    color: color,
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600)),
            onPressed: onPressed,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            )));
  }
}
