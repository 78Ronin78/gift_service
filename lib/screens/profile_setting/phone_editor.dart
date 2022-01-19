import 'package:flutter/material.dart';

class PhoneEditor extends StatefulWidget {
  @override
  _PhoneEditorState createState() => _PhoneEditorState();
}

class _PhoneEditorState extends State<PhoneEditor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Изменить номер телефона"),
      ),
    );
  }
}
