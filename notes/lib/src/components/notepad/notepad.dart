import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../note/note.dart';

class Notepad extends StatefulWidget {
  Notepad({Key key}) : super(key: key);

  @override
  _NotepadState createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
  List<Note> _notes = [];

  void _handleAddNote() {
    final String newTitle = 'Note ' + (_notes.length + 1).toString();
    setState(() {
      _notes.add(new Note(newTitle));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notepad'),
      ),
      body: ListView.builder(
        itemCount: _notes.length,
        itemBuilder: (context, i) {
          return _notes[i];
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleAddNote,
        tooltip: 'Add note',
        child: Icon(Icons.add),
      ),
    );
  }
}
