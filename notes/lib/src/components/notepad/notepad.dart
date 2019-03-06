import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../note/note.dart';

typedef VoidNoteOnClick = void Function(int index);

class Notepad extends StatefulWidget {
  Notepad({Key key}) : super(key: key);

  @override
  _NotepadState createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
  List<Note> _notes = [];
  int _selNote = -1;

  void _handleAddNote() {
    final int noteIndex = _notes.length + 1;
    final String newTitle = 'Note ' + noteIndex.toString();
    setState(() {
      _notes.add(new Note(newTitle, noteIndex, _handleClickNote));
    });
  }

  VoidNoteOnClick _handleClickNote(int noteIndex) {

    setState(() {
      _selNote = noteIndex;
    });
  }

  _renderBody() {
    if (_selNote > -1) {
      return Column(
        children: [
          Text(_notes[_selNote - 1].title),
          Text(_notes[_selNote - 1].description),
          RaisedButton(
            onPressed: () => _handleClickNote(-1),
            child: const Text('Back to list'),
          ),
        ],
      );
    }

    return ListView.builder(
      itemCount: _notes.length,
      itemBuilder: (context, i) {
        return _notes[i];
      }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notepad'),
      ),
      body: _renderBody(),
      floatingActionButton: _selNote < 0 ? FloatingActionButton(
        onPressed: _handleAddNote,
        tooltip: 'Add note',
        child: Icon(Icons.add),
      ) : null,
    );
  }
}
