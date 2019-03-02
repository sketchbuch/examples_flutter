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

  void _handleAdd() {
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
      body: _renderNotes(),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleAdd,
        tooltip: 'Add note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView _renderNotes() {
    return ListView.builder(
      itemCount: _notes.length,
      itemBuilder: (context, i) {
        return _notes[i];
      });
  }
}
