import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback textChange;
  TextControl(this.textChange);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: textChange,
        child: Text('Press me...'),
      ),
    );
  }
}
