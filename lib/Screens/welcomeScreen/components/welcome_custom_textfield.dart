import 'package:flutter/material.dart';

class CustomWelcomeTextField extends StatelessWidget {
  final String _text;
  final IconData _icon;
  final TextInputType _textInputType;
  final double _width;
  final bool _state;
  CustomWelcomeTextField(
      this._text, this._icon, this._textInputType, this._width, this._state);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: _width,
        child: TextField(
          obscureText: _state,
          style: TextStyle(color: Colors.white),
          keyboardType: _textInputType,
          decoration: InputDecoration(
              labelText: _text,
              labelStyle: TextStyle(color: Colors.teal),
              prefixIcon: Icon(
                _icon,
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white, width: 1),
              )),
        ));
  }
}
