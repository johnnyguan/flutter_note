import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';
import 'package:image_picker/image_picker.dart';

class AddNote extends StatefulWidget {
  AddNote({Key key}) : super(key: key);

  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  ZefyrController _controller;
  FocusNode _focusNode;
  void _checkNote(context) {
    print(_controller.document);
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    final document = new NotusDocument();
    _controller = new ZefyrController(document);
    _focusNode = new FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('编辑笔记'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {
              _checkNote(context);
            },
          )
        ],
      ),
      body: ZefyrScaffold(
        child: ZefyrEditor(
          controller: _controller,
          focusNode: _focusNode,
          imageDelegate: new CustomImageDelegate()
        ),
      ),
    );
  }
}

/// Custom image delegate used by this example to load image from application
/// assets.
///
/// Default image delegate only supports [FileImage]s.
class CustomImageDelegate extends ZefyrDefaultImageDelegate {
  
  @override
  Future<String> pickImage(ImageSource source) async {
    final file = await ImagePicker.pickImage(source: source);
    if (file == null) return null;
    // We simply return the absolute path to selected file.
    return file.uri.toString();
  }
}