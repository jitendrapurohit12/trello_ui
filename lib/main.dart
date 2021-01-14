import 'package:flutter/material.dart';
import 'package:trello_ui/boardview_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trello UI',
      home: BoardViewExample(),
    );
  }
}
