import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  String title;

  Note(this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.flight_land),
      subtitle: Text('The description is quite long'),
      title: Text(this.title),
    );
  }
}