import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  final text;
  TextDisplay(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
