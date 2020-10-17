import 'package:flutter/material.dart';

class DashboardCustomTextField extends StatelessWidget {
  final String _text;
  final int _maxLines;
  DashboardCustomTextField(this._text, this._maxLines);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        maxLines: _maxLines,
        decoration: InputDecoration(
          labelText: _text,
          labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
          fillColor: Colors.grey[200],
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
