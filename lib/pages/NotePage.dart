import 'package:flutter/material.dart';
import 'AddNote.dart';
class NotePage extends StatefulWidget {
  NotePage({Key key}) : super(key: key);

  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  void _addNote (context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return AddNote();
      }
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: '新增笔记',
        child: Icon(Icons.add),
        onPressed: () {
          _addNote(context);
        },
      ),
    );
  }
}