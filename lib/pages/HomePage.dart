import 'package:flutter/material.dart';
import 'TodoPage.dart';
import 'NotePage.dart';
import '../drawers/NoteDrawer.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _appBars = [
    AppBar(
      title: Text(
        '全部笔记',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),
      ),
    ),
    AppBar(
      title: Text(
        '全部待办',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),
      ),
    )
  ];

  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
     _currentIndex = index; 
    });
  }

  List<Widget> _pages = [NotePage(), TodoPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[_currentIndex],
      body: _pages[_currentIndex],
      drawer: NoteDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            title: Text(
              '笔记',
              // style: TextStyle(color: Colors.indigo)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            title: Text(
              '待办',
              // style: TextStyle(color: Colors.indigo)
            )
          )
        ],
        onTap: _onTap,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.indigo,
        currentIndex: _currentIndex,
      ),
    );
  }
}