import 'package:flutter/material.dart';
import 'src/components/notepad/notepad.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notepad 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Notepad(),
    );
  }
}