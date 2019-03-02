import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  String title;

  Note(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(this.title);
  }
}