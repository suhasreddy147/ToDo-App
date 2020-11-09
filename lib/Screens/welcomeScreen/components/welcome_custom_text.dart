import 'package:flutter/material.dart';

class CustomWelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {
        },
        child: Text(
          "Forgot Password ?",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }
}
