import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final String _text;
  final Widget _methodToBeCalled;
  CustomButtons(this._text, this._methodToBeCalled);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.teal,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => _methodToBeCalled),
              );
            },
            child: Text(_text, style: TextStyle(color: Colors.teal)),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
