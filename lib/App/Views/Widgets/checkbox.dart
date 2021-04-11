import 'package:flutter/material.dart';

class CheckBoxPerguntas extends StatelessWidget {
  const CheckBoxPerguntas({
    Key key,
    @required this.value,
    this.onPressed,
    this.title,
  }) : super(key: key);

  final bool value;
  final Function onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      title: Text(title),
      onChanged: onPressed,
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
