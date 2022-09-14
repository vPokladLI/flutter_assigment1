import 'package:flutter/material.dart';

import './textControl.dart';
import './textDisplay.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _textlist = ['First text', 'Second Text', 'Third Text'];
  var _textIndex = 0;

  void _changeTextIndex() {
    setState(() {
      if (_textIndex < _textlist.length - 1) {
        _textIndex += 1;
      } else {
        _textIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adjust_rounded),
          title: Text('Assigment app #1'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextDisplay(_textlist[_textIndex]),
            TextControl(_changeTextIndex)
          ],
        ),
      ),
    );
  }
}
