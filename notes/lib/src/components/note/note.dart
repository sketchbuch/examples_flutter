import 'package:flutter/material.dart';

typedef VoidNoteOnClick = void Function(int index);

class Note extends StatelessWidget {
  int index;
  String title;
  String description = 'The description is quite long';
  VoidNoteOnClick onClick;

  Note(this.title, this.index, this.onClick);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.flight_land),
      subtitle: Text(this.description),
      title: Text(this.title),
      onTap: () => onClick(index),
    );
  }
}