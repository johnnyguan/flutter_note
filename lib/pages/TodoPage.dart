import 'package:flutter/material.dart';
class TodoPage extends StatefulWidget {
  TodoPage({Key key}) : super(key: key);

  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '待办',
        style: TextStyle(color: Colors.brown)
      ),
    );
  }
}