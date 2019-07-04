import 'package:flutter/material.dart';

class NoteDrawer extends StatefulWidget {
  NoteDrawer({Key key}) : super(key: key);

  _NoteDrawerState createState() => _NoteDrawerState();
}

class _NoteDrawerState extends State<NoteDrawer> {
  int _totalNote = 2;
  int _totalCollect = 4;
  TextStyle _style = TextStyle(
    fontSize: 16,
    color: Colors.grey[600],
  );
  void _editLabel() {}
  void _checkout(param) {}
  void _addNewLabel() {}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 12),
            color: Colors.grey[200],
            child:
                Text('笔记', style: TextStyle(color: Colors.black, fontSize: 18)),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Icon(
                  Icons.book,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[300], width: 1))),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '全部笔记',
                          style: _style,
                        ),
                      ),
                      Text(
                        _totalNote.toString(),
                        style: _style,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Icon(
                  Icons.star_border,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '我的收藏',
                          style: _style,
                        ),
                      ),
                      Text(
                        _totalCollect.toString(),
                        style: _style,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(
            height: 5,
            child: Container(
              color: Colors.grey[300],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: Text(
                  '标签',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
              ),
              GestureDetector(
                child: Text('编辑',
                    style: TextStyle(color: Colors.blue, fontSize: 14)),
                onTap: () {
                  _editLabel();
                },
              ),
              SizedBox(
                width: 14,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Icon(
                  Icons.bookmark,
                  color: Colors.redAccent,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[300], width: 1))),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '工作',
                          style: _style,
                        ),
                      ),
                      Text(
                        _totalNote.toString(),
                        style: _style,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Icon(
                  Icons.bookmark,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _checkout('个人');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[300], width: 1))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '个人',
                            style: _style,
                          ),
                        ),
                        Text(
                          _totalNote.toString(),
                          style: _style,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 44,
              ),
              GestureDetector(
                child: Text(
                  '新建',
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
                onTap: () {
                  _addNewLabel();
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 5,
            child: Container(
              color: Colors.grey[300],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Icon(
                  Icons.build,
                  color: Colors.grey[500],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _checkout('设置');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[300], width: 1))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '设置',
                            style: _style,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
