import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  String? text;
  Color? color;
  double? size;
  bool? checkbox;

  MyTextWidget({
    Key? key,
    this.text,
    this.color,
    this.size,
    this.checkbox,
  }) : super(key: key);
// MyTextWidget (this.text, this.color);
// MyTextWidget ({required this.text, this.color}); tu text być musi, kolor być może
  @override
  Widget build(BuildContext context) {
    // checkbox == null ? checkbox = false : checkbox = checkbox;
    return Text(
      text!,
      style: TextStyle(
        decoration: checkbox == false || checkbox == null
            ? null
            : TextDecoration.lineThrough,
        decorationColor: Colors.black,
        decorationThickness: 2.0,
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}
